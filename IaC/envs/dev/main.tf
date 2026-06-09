# Triggering pipeline execution with new kind-cluster updates
resource "kubernetes_namespace" "env_namespace" {
  metadata {
    name = "color-app-dev"
  }
}