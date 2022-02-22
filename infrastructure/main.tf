resource "docker_image" "happy-stars" {
  name = "happy-stars"
  build {
    path = "../docker/"
    tag  = ["happy-stars:${var.image_version}"]
    label = {
      author : "pascal"
    }
  }
}

resource "docker_container" "happy-stars" {
  name  = "happy-stars"
  image = docker_image.happy-stars.latest
  ports {
    internal = var.container_port
    external = var.container_port
  }
  env = [
    "EXT_PORT=${var.container_port}"
  ]
}
