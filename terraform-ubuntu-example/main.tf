# this is used to provide dynamic updates to ubuntu instance
data "docker_registry_image" "ubuntu" {
  name = "ubuntu:precise"
}

resource "docker_image" "ubuntu" {
  #name = "ubuntu:precise" this is used to provide instance without any dyamic updates
  name = data.docker_registry_image.ubuntu.name
  pull_triggers = [data.docker_registry_image.ubuntu.sha256_digest]
}

resource "docker_container" "ubuntu" {
  name  = var.ubuntu-name
  image = docker_image.ubuntu.image_id
  tty = true
}