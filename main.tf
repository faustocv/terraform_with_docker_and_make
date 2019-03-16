resource "docker_image" "static_server_image" {
  name = "nginx:1.15-alpine"
}

resource "docker_container" "static_server_container" {
  name = "http_server"
  image = "${docker_image.static_server_image.latest}"
  ports {
    internal = "80"
    external = "9080"
  }
}
