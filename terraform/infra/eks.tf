variable "admin_cidr" {
  description = "Public IPv4 address of the administrator with /32"
  type        = string

  validation {
    condition     = can(cidrnetmask(var.admin_cidr)) && endswith(var.admin_cidr, "/32")
    error_message = "Enter a valid IPv4 address with /32."
  }
}

resource "aws_eks_cluster" "main" {
  name     = local.cluster_name
  role_arn = aws_iam_role.cluster.arn
  version  = "1.36"

  bootstrap_self_managed_addons = true

  access_config {
    authentication_mode                         = "API"
    bootstrap_cluster_creator_admin_permissions = true
  }

  upgrade_policy {
    support_type = "STANDARD"
  }

  vpc_config {
    subnet_ids              = sort(data.aws_subnets.default.ids)
    endpoint_private_access = true
    endpoint_public_access  = true
    public_access_cidrs     = [var.admin_cidr]
  }

  lifecycle {
    precondition {
      condition = (
        data.aws_vpc.default.enable_dns_support &&
        data.aws_vpc.default.enable_dns_hostnames
      )
      error_message = "The VPC must have DNS support and DNS hostnames enabled."
    }
  }

  depends_on = [
    aws_iam_role_policy_attachment.cluster
  ]

  tags = {
    Project = local.cluster_name
  }
}

resource "aws_eks_node_group" "main" {
  cluster_name    = aws_eks_cluster.main.name
  node_group_name = "${local.cluster_name}-nodes"
  node_role_arn   = aws_iam_role.node.arn
  subnet_ids      = sort(data.aws_subnets.default.ids)

  version        = aws_eks_cluster.main.version
  ami_type       = "AL2023_x86_64_STANDARD"
  instance_types = ["m7i-flex.large"]
  capacity_type  = "ON_DEMAND"
  disk_size      = 20

  scaling_config {
    desired_size = 1
    min_size     = 1
    max_size     = 1
  }

  depends_on = [
    aws_iam_role_policy_attachment.node
  ]

  tags = {
    Project = local.cluster_name
  }
}

output "cluster_name" {
  value = aws_eks_cluster.main.name
}

output "cluster_version" {
  value = aws_eks_cluster.main.version
}

output "node_group_name" {
  value = aws_eks_node_group.main.node_group_name
}
