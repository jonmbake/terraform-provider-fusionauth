resource "fusionauth_tenant" "example" {
  name = "Playtronics Co."
  email_configuration {
    forgot_password_email_template_id = fusionauth_email.hello_world.id
    host                              = "example.com"
    password                          = "password"
    passwordless_email_template_id    = fusionauth_email.hello_world.id
    port                              = 587
    security                          = "TLS"
    set_password_email_template_id    = fusionauth_email.hello_world.id
    username                          = "username"
    verify_email                      = true
    verification_email_template_id    = fusionauth_email.hello_world.id
    verify_email_when_changed         = true
  }
  event_configuration {
    event            = "user.delete"
    enabled          = true
    transaction_type = "None"
  }
  event_configuration {
    event            = "user.create"
    enabled          = true
    transaction_type = "None"
  }
  event_configuration {
    event            = "user.update"
    enabled          = true
    transaction_type = "None"
  }
  event_configuration {
    event            = "user.deactivate"
    enabled          = true
    transaction_type = "Any"
  }
  event_configuration {
    event            = "user.bulk.create"
    enabled          = true
    transaction_type = "Any"
  }
  event_configuration {
    event            = "user.reactivate"
    enabled          = true
    transaction_type = "Any"
  }
  event_configuration {
    event            = "jwt.refresh-token.revoke"
    enabled          = true
    transaction_type = "Any"
  }
  event_configuration {
    event            = "jwt.refresh"
    enabled          = true
    transaction_type = "Any"
  }
  event_configuration {
    event            = "jwt.public-key.update"
    enabled          = true
    transaction_type = "Any"
  }
  event_configuration {
    event            = "user.login.success"
    enabled          = true
    transaction_type = "Any"
  }
  event_configuration {
    event            = "user.login.failed"
    enabled          = true
    transaction_type = "Any"
  }
  event_configuration {
    event            = "user.registration.create"
    enabled          = true
    transaction_type = "Any"
  }
  event_configuration {
    event            = "user.registration.update"
    enabled          = true
    transaction_type = "Any"
  }
  event_configuration {
    event            = "user.registration.delete"
    enabled          = true
    transaction_type = "Any"
  }
  event_configuration {
    event            = "user.registration.verified"
    enabled          = true
    transaction_type = "Any"
  }
  event_configuration {
    event            = "user.email.verified"
    enabled          = true
    transaction_type = "Any"
  }
  event_configuration {
    event            = "user.identity-provider.link"
    enabled          = true
    transaction_type = "Any"
  }
  event_configuration {
    event            = "user.identity-provider.unlink"
    enabled          = true
    transaction_type = "Any"
  }
  event_configuration {
    event            = "user.password.breach"
    enabled          = false
    transaction_type = "None"
  }
  external_identifier_configuration {
    authorization_grant_id_time_to_live_in_seconds = 30
    change_password_id_generator {
      length = 32
      type   = "randomBytes"
    }
    change_password_id_time_to_live_in_seconds = 600
    device_code_time_to_live_in_seconds        = 1800
    device_user_code_id_generator {
      length = 6
      type   = "randomAlphaNumeric"
    }
    email_verification_id_generator {
      length = 32
      type   = "randomBytes"
    }
    email_verification_id_time_to_live_in_seconds = 86400
    email_verification_one_time_code_generator {
      length = 6
      type   = "randomAlphaNumeric"
    }
    external_authentication_id_time_to_live_in_seconds = 300
    one_time_password_time_to_live_in_seconds          = 60
    passwordless_login_generator {
      length = 32
      type   = "randomBytes"
    }
    passwordless_login_time_to_live_in_seconds = 600
    registration_verification_id_generator {
      length = 32
      type   = "randomBytes"
    }
    registration_verification_id_time_to_live_in_seconds = 86400
    registration_verification_one_time_code_generator {
      length = 6
      type   = "randomAlphaNumeric"
    }
    saml_v2_authn_request_id_ttl_seconds = 300
    setup_password_id_generator {
      length = 32
      type   = "randomBytes"
    }
    setup_password_id_time_to_live_in_seconds = 86400
    two_factor_id_time_to_live_in_seconds     = 300
    two_factor_one_time_code_id_generator {
      length = 6
      type   = "randomDigits"
    }
    two_factor_trust_id_time_to_live_in_seconds = 2592000
  }
  failed_authentication_configuration {
    action_duration        = 3
    action_duration_unit   = "MINUTES"
    reset_count_in_seconds = 60
    too_many_attempts      = 5
  }
  family_configuration {
    allow_child_registrations     = true
    delete_orphaned_accounts      = false
    delete_orphaned_accounts_days = 30
    enabled                       = true
    maximum_child_age             = 12
    minimum_owner_age             = 21
    parent_email_required         = false
  }
  http_session_max_inactive_interval = 3600
  issuer                             = "https://example.com"
  jwt_configuration {
    access_token_key_id                   = fusionauth_key.example.id
    id_token_key_id                       = fusionauth_key.example.id
    refresh_token_time_to_live_in_minutes = 43200
    time_to_live_in_seconds               = 3600
  }
  login_configuration {
    require_authentication = true
  }
  maximum_password_age {
    days    = 180
    enabled = false
  }
  minimum_password_age {
    enabled = false
    seconds = 30
  }
  password_encryption_configuration {
    encryption_scheme                 = "salted-pbkdf2-hmac-sha256"
    encryption_scheme_factor          = 24000
    modify_encryption_scheme_on_login = false
  }
  password_validation_rules {
    max_length = 256
    min_length = 7
    remember_previous_passwords {
      count   = 1
      enabled = false
    }
    required_mixed_case = false
    require_non_alpha   = false
    require_number      = false
    validate_on_login   = false
  }
  theme_id = "75a068fd-e94b-451a-9aeb-3ddb9a3b5987"
  user_delete_policy {
    unverified_enabled                  = false
    unverified_number_of_days_to_retain = 30
  }
  multi_factor_configuration {
    login_policy = "Disabled"
  }
}