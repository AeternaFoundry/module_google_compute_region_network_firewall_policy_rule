variable "compute_region_network_firewall_policy_rules" {
  description = <<EOT
Map of compute_region_network_firewall_policy_rules, attributes below
Required:
    - action
    - direction
    - firewall_policy
    - priority
    - match (block):
        - dest_address_groups (optional)
        - dest_fqdns (optional)
        - dest_ip_ranges (optional)
        - dest_network_context (optional)
        - dest_region_codes (optional)
        - dest_threat_intelligences (optional)
        - layer4_configs (required, block):
            - ip_protocol (required)
            - ports (optional)
        - src_address_groups (optional)
        - src_fqdns (optional)
        - src_ip_ranges (optional)
        - src_network_context (optional)
        - src_networks (optional)
        - src_region_codes (optional)
        - src_secure_tags (optional, block):
            - name (optional)
        - src_threat_intelligences (optional)
Optional:
    - deletion_policy
    - description
    - disabled
    - enable_logging
    - project
    - region
    - rule_name
    - security_profile_group
    - target_forwarding_rules
    - target_service_accounts
    - target_type
    - tls_inspect
    - target_secure_tags (block):
        - name (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    action                  = string
    direction               = string
    firewall_policy         = string
    priority                = number
    deletion_policy         = optional(string)
    description             = optional(string)
    disabled                = optional(bool)
    enable_logging          = optional(bool)
    project                 = optional(string)
    region                  = optional(string)
    rule_name               = optional(string)
    security_profile_group  = optional(string)
    target_forwarding_rules = optional(list(string))
    target_service_accounts = optional(list(string))
    target_type             = optional(string)
    tls_inspect             = optional(bool)
    match = object({
      dest_address_groups       = optional(list(string))
      dest_fqdns                = optional(list(string))
      dest_ip_ranges            = optional(list(string))
      dest_network_context      = optional(string)
      dest_region_codes         = optional(list(string))
      dest_threat_intelligences = optional(list(string))
      layer4_configs = list(object({
        ip_protocol = string
        ports       = optional(list(string))
      }))
      src_address_groups  = optional(list(string))
      src_fqdns           = optional(list(string))
      src_ip_ranges       = optional(list(string))
      src_network_context = optional(string)
      src_networks        = optional(list(string))
      src_region_codes    = optional(list(string))
      src_secure_tags = optional(list(object({
        name = optional(string)
      })))
      src_threat_intelligences = optional(list(string))
    })
    target_secure_tags = optional(list(object({
      name = optional(string)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.compute_region_network_firewall_policy_rules : (
        length(v.match.layer4_configs) >= 1
      )
    ])
    error_message = "Each layer4_configs list must contain at least 1 items"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

