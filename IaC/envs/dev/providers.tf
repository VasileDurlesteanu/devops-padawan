terraform {
  required_version = ">= 1.0.0"
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.23.0"
    }
  }
}

provider "kubernetes" {
  # Directs Terraform to interact with the local Docker Desktop K8S cluster
  config_path = "~/.kube/config"
}