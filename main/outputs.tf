## Compute Instance Outputs ##
#output "internal_ip" {
#  value = module.my-instance.internal_ip
#}
#
#output "external_ip" {
#  value = module.my-instance.external_ip
#}
#
#output "centos_7_images" {
#  value = module.my-instance.centos-7-images
#}

## Composer Outputs ##
output "composer_env_name" {
  description = "Name of the Cloud Composer Environment."
  value       = module.composer-environment.composer_env_name
}

output "composer_env_id" {
  description = "ID of Cloud Composer Environment."
  value       = module.composer-environment.composer_env_id
}

output "gke_cluster" {
  description = "Google Kubernetes Engine cluster used to run the Cloud Composer Environment."
  value       = module.composer-environment.gke_cluster
}

output "gcs_bucket" {
  description = "Google Cloud Storage bucket which hosts DAGs for the Cloud Composer Environment."
  value       = module.composer-environment.gcs_bucket
}

output "airflow_uri" {
  description = "URI of the Apache Airflow Web UI hosted within the Cloud Composer Environment."
  value       = module.composer-environment.airflow_uri
}

output "project_number" {
  value = module.composer-environment.project_number
}