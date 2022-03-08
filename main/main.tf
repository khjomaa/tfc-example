module "my-instance" {
  source     = "../modules/compute-engine"
  image      = var.image
  project_id = var.project_id
}