terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "notify_app" {
  name = "notify-app:test"
  build {
    context    = "${path.module}"
    dockerfile = "${path.module}/Dockerfile"
  }
}

resource "docker_container" "notify_container" {
  name     = "notify-app-container"
  image    = docker_image.notify_app.image_id
  must_run = true
  restart  = "no"
}
