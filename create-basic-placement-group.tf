resource "hcloud_placement_group" "my-placement-group" {
  name = "my-demo-placement-group"
  type = "spread"
}