resource "vault_aws_secret_backend" "aws_secret_backends" {
  for_each = var.aws_secret_backends

  access_key                   = each.value.access_key
  allowed_managed_keys         = each.value.allowed_managed_keys
  allowed_response_headers     = each.value.allowed_response_headers
  audit_non_hmac_request_keys  = each.value.audit_non_hmac_request_keys
  audit_non_hmac_response_keys = each.value.audit_non_hmac_response_keys
  default_lease_ttl_seconds    = each.value.default_lease_ttl_seconds
  delegated_auth_accessors     = each.value.delegated_auth_accessors
  description                  = each.value.description
  disable_automated_rotation   = each.value.disable_automated_rotation
  disable_remount              = each.value.disable_remount
  external_entropy_access      = each.value.external_entropy_access
  force_no_cache               = each.value.force_no_cache
  iam_endpoint                 = each.value.iam_endpoint
  identity_token_audience      = each.value.identity_token_audience
  identity_token_key           = each.value.identity_token_key
  identity_token_ttl           = each.value.identity_token_ttl
  listing_visibility           = each.value.listing_visibility
  local                        = each.value.local
  max_lease_ttl_seconds        = each.value.max_lease_ttl_seconds
  max_retries                  = each.value.max_retries
  namespace                    = each.value.namespace
  options                      = each.value.options
  passthrough_request_headers  = each.value.passthrough_request_headers
  path                         = each.value.path
  plugin_version               = each.value.plugin_version
  region                       = each.value.region
  role_arn                     = each.value.role_arn
  rotation_period              = each.value.rotation_period
  rotation_schedule            = each.value.rotation_schedule
  rotation_window              = each.value.rotation_window
  seal_wrap                    = each.value.seal_wrap
  secret_key                   = each.value.secret_key
  secret_key_wo                = each.value.secret_key_wo
  secret_key_wo_version        = each.value.secret_key_wo_version
  sts_endpoint                 = each.value.sts_endpoint
  sts_fallback_endpoints       = each.value.sts_fallback_endpoints
  sts_fallback_regions         = each.value.sts_fallback_regions
  sts_region                   = each.value.sts_region
  username_template            = each.value.username_template
}

