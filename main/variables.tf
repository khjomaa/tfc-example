variable "region" {
  type    = string
  default = "us-east1"
}

variable "zone" {
  type    = string
  default = "us-east1-b"
}

variable "project_id" {
  default = "khjomaa-tfc-gcp"
}

variable "image" {
  type    = string
  default = "centos-cloud/centos-7"
}

variable "gcp_credentials" {}


### Composer V2 Vars
variable "composer_env_name" {
  description = "Name of Cloud Composer Environment."
  default     = "ci-composer"
  type        = string
}

variable "composer_service_account" {
  description = "Service Account to be used for running Cloud Composer Environment."
  type        = string
}

#variable "network" {
#  description = "Network where Cloud Composer is created."
#  type        = string
#}
#
#variable "subnetwork" {
#  description = "Subetwork where Cloud Composer is created."
#  type        = string
#}

#variable "pod_ip_allocation_range_name" {
#  description = "The name of the cluster's secondary range used to allocate IP addresses to pods."
#  type        = string
#}
#
#variable "service_ip_allocation_range_name" {
#  type        = string
#  description = "The name of the services' secondary range used to allocate IP addresses to the cluster."
#}