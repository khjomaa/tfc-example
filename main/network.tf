resource "google_compute_network" "main" {
  project                 = var.project_id
  name                    = "${var.composer_env_name}-${random_string.suffix.result}"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "main" {
  project                  = var.project_id
  name                     = "${var.composer_env_name}-${random_string.suffix.result}"
  ip_cidr_range            = "10.0.0.0/17"
  region                   = var.region
  network                  = google_compute_network.main.self_link
  private_ip_google_access = true

  secondary_ip_range {
    range_name    = "${var.composer_env_name}-pods-${random_string.suffix.result}"
    ip_cidr_range = "192.168.0.0/18"
  }

  secondary_ip_range {
    range_name    = "${var.composer_env_name}-services-${random_string.suffix.result}"
    ip_cidr_range = "192.168.64.0/18"
  }
}

resource "random_string" "suffix" {
  length  = 4
  special = false
  upper   = false
}
