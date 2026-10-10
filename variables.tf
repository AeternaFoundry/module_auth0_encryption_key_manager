variable "encryption_key_managers" {
  description = <<EOT
Map of encryption_key_managers, attributes below
Optional:
    - key_rotation_id
    - customer_provided_root_key (block):
        - wrapped_key (optional)
EOT

  type = map(object({
    key_rotation_id = optional(string)
    customer_provided_root_key = optional(object({
      wrapped_key = optional(string)
    }))
  }))
}

