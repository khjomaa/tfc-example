#data "google_project" "project" {
#  project_id = var.project_id
#}

# https://cloud.google.com/composer/docs/composer-2/create-environments#grant-permissions
resource "google_project_iam_member" "composer_agent_service_account" {
  count   = var.grant_sa_agent_permission ? 1 : 0
  project = data.google_project.project.project_id
  role    = "roles/composer.ServiceAgentV2Ext"
  member  = format("serviceAccount:%s", local.cloud_composer_sa)
}
