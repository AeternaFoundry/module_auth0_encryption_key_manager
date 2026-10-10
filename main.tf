resource "auth0_encryption_key_manager" "encryption_key_managers" {
  for_each = var.encryption_key_managers

  key_rotation_id = each.value.key_rotation_id

  dynamic "customer_provided_root_key" {
    for_each = each.value.customer_provided_root_key != null ? [each.value.customer_provided_root_key] : []
    content {
      wrapped_key = customer_provided_root_key.value.wrapped_key
    }
  }
}

