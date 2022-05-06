resource "helm_release" "cert_reflector" {
  count      = var.deploy_reflector ? 1 : 0
  name       = "reflector"
  repository = "https://emberstack.github.io/helm-charts"
  chart      = "reflector"
  version    = "6.1.9"
  namespace  = "cert-manager"

  depends_on = [
    kubernetes_namespace.cert_manager,
  ]
}