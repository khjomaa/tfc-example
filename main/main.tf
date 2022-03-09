#module "my-instance" {
#  source     = "../modules/compute-engine"
#  image      = var.image
#  project_id = var.project_id
#}

resource "random_id" "random_suffix" {
  byte_length = 2
}

module "composer-environment" {
  source = "../modules/google-composer"
  project_id                       = var.project_id
  composer_env_name                = var.composer_env_name
  region                           = var.region
  composer_service_account         = var.composer_service_account
  network                          = google_compute_network.main.name
  subnetwork                       = google_compute_subnetwork.main.name
  pod_ip_allocation_range_name     = google_compute_subnetwork.main.secondary_ip_range[0].range_name
  service_ip_allocation_range_name = google_compute_subnetwork.main.secondary_ip_range[1].range_name
  grant_sa_agent_permission        = true
  environment_size                 = "ENVIRONMENT_SIZE_SMALL"
  scheduler = {
    cpu        = 0.5
    memory_gb  = 1.875
    storage_gb = 1
    count      = 1
  }
  web_server = {
    cpu        = 0.5
    memory_gb  = 1.875
    storage_gb = 1
  }
  worker = {
    cpu        = 0.5
    memory_gb  = 1.875
    storage_gb = 1
    min_count  = 1
    max_count  = 3
  }
}
