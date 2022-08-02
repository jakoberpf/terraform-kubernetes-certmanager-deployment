resource "kubernetes_namespace" "cert_manager" {
  metadata {
    annotations = {
      name = var.namespace
    }

    labels = {
      managed-by = var.compartment
    }

    name = var.namespace
  }
}
