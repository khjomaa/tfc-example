variable "machine_name_prefix" {
  type    = string
  default = "instance"
}
variable "machine_type" {
  type    = string
  default = "e2-micro"
}

variable "image" {
  type = string
}

variable "project_id" {
  type = string
}
