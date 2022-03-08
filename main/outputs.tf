output "internal_ip" {
  value = module.my-instance.internal_ip
}

output "external_ip" {
  value = module.my-instance.external_ip
}

output "centos_7_images" {
  value = module.my-instance.centos-7-images
}
