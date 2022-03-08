provider "google" {
#  credentials = file(var.gcp_credentials)

  project = var.project_id
  region  = var.region
  zone    = var.zone
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 3.50.0"
    }

    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">= 3.50.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
  }
}