output "encryption_key_managers_id" {
  description = "Map of id values across all encryption_key_managers, keyed the same as var.encryption_key_managers except keys with no id are omitted"
  value       = { for k, v in auth0_encryption_key_manager.encryption_key_managers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "encryption_key_managers_customer_provided_root_key" {
  description = "Map of customer_provided_root_key values across all encryption_key_managers, keyed the same as var.encryption_key_managers except keys with no customer_provided_root_key are omitted"
  value       = { for k, v in auth0_encryption_key_manager.encryption_key_managers : k => one(v.customer_provided_root_key) if v.customer_provided_root_key != null && length(v.customer_provided_root_key) > 0 }
}
output "encryption_key_managers_encryption_keys" {
  description = "Map of encryption_keys values across all encryption_key_managers, keyed the same as var.encryption_key_managers except keys with no encryption_keys are omitted"
  value       = { for k, v in auth0_encryption_key_manager.encryption_key_managers : k => v.encryption_keys if v.encryption_keys != null && length(v.encryption_keys) > 0 }
}
output "encryption_key_managers_key_rotation_id" {
  description = "Map of key_rotation_id values across all encryption_key_managers, keyed the same as var.encryption_key_managers except keys with no key_rotation_id are omitted"
  value       = { for k, v in auth0_encryption_key_manager.encryption_key_managers : k => v.key_rotation_id if v.key_rotation_id != null && length(v.key_rotation_id) > 0 }
}

