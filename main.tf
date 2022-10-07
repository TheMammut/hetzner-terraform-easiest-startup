terraform {
  required_version = "0.14.11"

  required_providers {
    hcloud = {
      source = "hetznercloud/hcloud"
      version = "1.35.2"
    }
  }
}

provider "hcloud" {
  # Configuration options
  token = var.hcloud_token
}