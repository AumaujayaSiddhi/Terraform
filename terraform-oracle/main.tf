data "docker_registry_image" "oracle" {
  name = "container-registry.oracle.com/database/free:latest"
}

resource "docker_image" "oracle" {
  name          = data.docker_registry_image.oracle.name
  pull_triggers = [data.docker_registry_image.oracle.sha256_digest]
}

# Create a container
resource "docker_container" "oracle-container" {
  name  = "oracle-container"
  image = docker_image.oracle.image_id
  ports {
    internal = 1521
    external = 1521
  }
  env = [
    "ORACLE_SID=ORCLCDB",
    "ORACLE_PDB=ORCLPDB1",
    "ORACLE_PWD=ora@123",
  ]
  tty = true
}
