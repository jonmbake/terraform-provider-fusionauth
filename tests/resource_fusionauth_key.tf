resource "fusionauth_key" "example" {
  algorithm = "RS256"
  name      = "Example key"
  length    = 2048
}