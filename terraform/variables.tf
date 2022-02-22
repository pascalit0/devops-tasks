variable "container_port" {
  type = string
  default = "8085"
  description = "Port for the happy_stars application"
}

variable "image_version" {
  type = string
  default = "0.0.1"
  description = "Version of the happy stars docker image"
}