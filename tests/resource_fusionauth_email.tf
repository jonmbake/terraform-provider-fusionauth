resource "fusionauth_email" "hello_world" {
  name                  = "Hello World"
  default_from_name     = "Welcome Team"
  default_html_template = "<p>Hello World</p>"
  default_subject       = "Hello"
  default_text_template = "Hello World"
  from_email            = "welcome@example.com"
}