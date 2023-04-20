resource "fusionauth_form_field" "email" {
  description = "User email"
  key         = "user.email"
  name        = "Cusomt email"
  required    = true
  confirm     = false
}

resource "fusionauth_form_field" "password" {
  description = "User password"
  key         = "user.password"
  name        = "Custom password"
  required    = true
  confirm     = true
}