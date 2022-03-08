resource "random_id" "instance_id" {
  byte_length = 8
}

data "google_compute_image" "instance_image"{
  project = "centos-cloud"
  family  = "centos-7"
}

resource "google_compute_instance" "gc-instance" {
  name         = "${var.machine_name_prefix}-${random_id.instance_id.hex}"
  machine_type = var.machine_type

  boot_disk {
    initialize_params {
#      image = data.google_compute_image.instance_image.self_link
      image = var.image
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.name
    access_config {
    }
  }
}