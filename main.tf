provider "aws" {
  region = "us-east-1"
}

provider "digitalocean" {
  token = var.do_token
}

locals {
  project_name = "itizen"
  domain = "tomohiko.io"
}

variable "env" {
  default = "stg"
}

variable "db_pass" {
  default = "password"
}
