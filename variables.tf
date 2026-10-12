variable "aws_secret_backends" {
  description = <<EOT
Map of aws_secret_backends, attributes below
Optional:
    - access_key
    - allowed_managed_keys
    - allowed_response_headers
    - audit_non_hmac_request_keys
    - audit_non_hmac_response_keys
    - default_lease_ttl_seconds
    - delegated_auth_accessors
    - description
    - disable_automated_rotation
    - disable_remount
    - external_entropy_access
    - force_no_cache
    - iam_endpoint
    - identity_token_audience
    - identity_token_key
    - identity_token_ttl
    - listing_visibility
    - local
    - max_lease_ttl_seconds
    - max_retries
    - namespace
    - options
    - passthrough_request_headers
    - path
    - plugin_version
    - region
    - role_arn
    - rotation_period
    - rotation_schedule
    - rotation_window
    - seal_wrap
    - secret_key
    - secret_key_wo
    - secret_key_wo_version
    - sts_endpoint
    - sts_fallback_endpoints
    - sts_fallback_regions
    - sts_region
    - username_template
EOT

  type = map(object({
    access_key                   = optional(string)
    allowed_managed_keys         = optional(set(string))
    allowed_response_headers     = optional(list(string))
    audit_non_hmac_request_keys  = optional(list(string))
    audit_non_hmac_response_keys = optional(list(string))
    default_lease_ttl_seconds    = optional(number)
    delegated_auth_accessors     = optional(list(string))
    description                  = optional(string)
    disable_automated_rotation   = optional(bool)
    disable_remount              = optional(bool)
    external_entropy_access      = optional(bool)
    force_no_cache               = optional(bool)
    iam_endpoint                 = optional(string)
    identity_token_audience      = optional(string)
    identity_token_key           = optional(string)
    identity_token_ttl           = optional(number)
    listing_visibility           = optional(string)
    local                        = optional(bool)
    max_lease_ttl_seconds        = optional(number)
    max_retries                  = optional(number)
    namespace                    = optional(string)
    options                      = optional(map(string))
    passthrough_request_headers  = optional(list(string))
    path                         = optional(string)
    plugin_version               = optional(string)
    region                       = optional(string)
    role_arn                     = optional(string)
    rotation_period              = optional(number)
    rotation_schedule            = optional(string)
    rotation_window              = optional(number)
    seal_wrap                    = optional(bool)
    secret_key                   = optional(string)
    secret_key_wo                = optional(string)
    secret_key_wo_version        = optional(number)
    sts_endpoint                 = optional(string)
    sts_fallback_endpoints       = optional(list(string))
    sts_fallback_regions         = optional(list(string))
    sts_region                   = optional(string)
    username_template            = optional(string)
  }))
}

