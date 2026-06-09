terraform {
  required_version = ">= 1.0.0"
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.23.0"
    }
  }

  backend "s3" {
    bucket  = "vvd-cicd-task-tf-state"
    key     = "infrastructure/dev/terraform.tfstate"
    region  = "eu-west-3"
    encrypt = true
  }
}

provider "kubernetes" {}