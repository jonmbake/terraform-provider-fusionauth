terraform {
  required_providers {
    fusionauth = {
      source  = "gpsinsight/fusionauth"
      version = "1.0.0"
    }
  }
}

provider "fusionauth" {
  api_key = "4737ea8520bd454caabb7cb3d36e14bc1832c0d3f70a4189b82598670f11b1bd"
  host    = "http://localhost:9011"
}

resource "fusionauth_application" "test_app" {
  tenant_id                                  = fusionauth_tenant.example.id
  authentication_token_configuration_enabled = false
  jwt_configuration {
    access_token_id           = fusionauth_key.example.id
    enabled                   = true
    id_token_key_id           = fusionauth_key.example.id
    refresh_token_ttl_minutes = 43200
    ttl_seconds               = 3600
  }
  login_configuration {
    allow_token_refresh     = false
    generate_refresh_tokens = false
    require_authentication  = true
  }
  name = "TestApp"
  oauth_configuration {
    authorized_origin_urls = [
      "http://www.example.com"
    ]
    authorized_url_validation_policy = "ExactMatch"

    enabled_grants = [
      "authorization_code", "implicit"
    ]

    generate_refresh_tokens = false
    logout_behavior         = "AllApplications"
    logout_url              = "http://www.example.com/logout"
  }
  registration_configuration {
    birth_date {
      enabled  = false
      required = false
    }
    confirm_password = false
    enabled          = false
    first_name {
      enabled  = false
      required = false
    }
    full_name {
      enabled  = false
      required = false
    }
    last_name {
      enabled  = false
      required = false
    }
    login_id_type = "email"
    middle_name {
      enabled  = false
      required = false
    }
    mobile_phone {
      enabled  = false
      required = false
    }
    type = "basic"
  }
  passwordless_configuration_enabled = false
  registration_delete_policy {
    unverified_enabled                  = true
    unverified_number_of_days_to_retain = 30
  }
}