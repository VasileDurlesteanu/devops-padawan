resource "kubernetes_namespace" "env_namespace" {
  metadata {
    name = "color-app-dev"
  }
}