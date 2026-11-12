output "encryption_key_managers_id" {
  description = "Map of id values across all encryption_key_managers, keyed the same as var.encryption_key_managers"
  value       = { for k, v in auth0_encryption_key_manager.encryption_key_managers : k => v.id }
}
output "encryption_key_managers_customer_provided_root_key" {
  description = "Map of customer_provided_root_key values across all encryption_key_managers, keyed the same as var.encryption_key_managers"
  value       = { for k, v in auth0_encryption_key_manager.encryption_key_managers : k => one(v.customer_provided_root_key) }
}
output "encryption_key_managers_encryption_keys" {
  description = "Map of encryption_keys values across all encryption_key_managers, keyed the same as var.encryption_key_managers"
  value       = { for k, v in auth0_encryption_key_manager.encryption_key_managers : k => v.encryption_keys }
}
output "encryption_key_managers_key_rotation_id" {
  description = "Map of key_rotation_id values across all encryption_key_managers, keyed the same as var.encryption_key_managers"
  value       = { for k, v in auth0_encryption_key_manager.encryption_key_managers : k => v.key_rotation_id }
}

