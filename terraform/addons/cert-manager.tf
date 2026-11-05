resource "helm_release" "cert_manager" {
  name             = "cert-manager"
  namespace        = "cert-manager"
  create_namespace = true

  repository = "oci://quay.io/jetstack/charts"
  chart      = "cert-manager"
  version    = "v1.21.3"

  wait          = true
  wait_for_jobs = true
  timeout       = 900

  values = [
    yamlencode({
      crds = {
        enabled = true
      }

      prometheus = {
        enabled = false
      }
    })
  ]
}
