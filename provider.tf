terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.28.1"
    }
  }
}

# variable "do_token" {}
variable "pvt_key" {}
variable "pub_key_name" {}
variable "region" {}

provider "digitalocean" {
  # token = var.do_token  ## use export DIGITALOCEAN_TOKEN instead
}

data "digitalocean_ssh_key" "terraform" {
  name = var.pub_key_name
}

