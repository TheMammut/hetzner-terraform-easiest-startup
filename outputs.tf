output "hcloudname" {
  value = hcloud_server.hcloud-vm-server.name
}

output "hcloudip4" {
  value = hcloud_server.hcloud-vm-server.ipv4_address
}
