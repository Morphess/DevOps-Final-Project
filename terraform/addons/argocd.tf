resource "helm_release" "argocd" {
  name             = "argocd"
  namespace        = "argocd"
  create_namespace = true

  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  version    = "10.12.0"

  wait    = true
  timeout = 900

  values = [
    yamlencode({
      global = {
        domain = "argocd.morphess-devops.pp.ua"
      }

      dex = {
        enabled = false
      }

      notifications = {
        enabled = false
      }

      applicationSet = {
        enabled = false
      }

      server = {
        service = {
          type = "ClusterIP"
        }

        ingress = {
          enabled = false
        }
      }
    })
  ]
}
