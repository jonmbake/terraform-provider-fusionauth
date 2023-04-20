resource "fusionauth_form" "example" {
  data = {
    "description" : "This form customizes the registration experience."
  }
  name = "Custom Registration Form"
  steps {
    fields = [fusionauth_form_field.email.id, fusionauth_form_field.password.id]
  }
}