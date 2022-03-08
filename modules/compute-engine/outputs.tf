output "internal_ip" {
  value = google_compute_instance.gc-instance.network_interface.0.network_ip
}

output "external_ip" {
  value = google_compute_instance.gc-instance.network_interface.0.access_config.0.nat_ip
}

output "centos-7-images" {
  value = data.google_compute_image.instance_image.name
}
