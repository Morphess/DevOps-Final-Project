resource "helm_release" "nginx" {
  name             = "nginx-ingress"
  namespace        = "nginx-ingress"
  create_namespace = true

  repository = "https://helm.nginx.com/stable"
  chart      = "nginx-ingress"
  version    = "2.8.1"

  wait      = true
  timeout   = 900
  skip_crds = true

  values = [
    yamlencode({
      controller = {
        replicaCount          = 1
        enableCustomResources = false

        ingressClass = {
          name                = "nginx"
          create              = true
          setAsDefaultIngress = false
        }

        service = {
          name                  = "nginx-ingress"
          type                  = "LoadBalancer"
          externalTrafficPolicy = "Cluster"

          annotations = {
            "service.beta.kubernetes.io/aws-load-balancer-type" = "nlb"

            "service.beta.kubernetes.io/aws-load-balancer-subnets" = join(
              ",",
              data.terraform_remote_state.infra.outputs.subnet_ids
            )
          }
        }
      }
    })
  ]
}
