
resource "hcloud_server" "hcloud-vm-server" {
  name        = "demo-host-vm"
  image       = "ubuntu-22.04"
  server_type = "cpx11"
  location    = "fsn1"
  placement_group_id = hcloud_placement_group.my-placement-group.id
  ssh_keys = [ "MSMacBook" ]
  public_net {
    ipv4_enabled = true
    ipv6_enabled = true
  }
  firewall_ids = [hcloud_firewall.hcloud1firewall.id, hcloud_firewall.hcloud2firewall.id]
}