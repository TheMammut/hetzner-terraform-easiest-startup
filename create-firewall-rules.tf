resource "hcloud_firewall" "hcloud1firewall" {
  name = "ping-firewall"
  rule {
    direction = "in"
    protocol  = "icmp"
    source_ips = [
      "0.0.0.0/0",
      "::/0"
    ]
    description = "allow ping in"
  }

}

resource "hcloud_firewall" "hcloud2firewall" {
  name = "ssh-firewall"
  rule {
    direction = "in"
    protocol  = "tcp"
    port      = "22"
    source_ips = [
      "0.0.0.0/0",
      "::/0"
    ]
    description = "allow ssh in"
  }

}