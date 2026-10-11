resource "google_compute_region_network_firewall_policy_rule" "compute_region_network_firewall_policy_rules" {
  for_each = var.compute_region_network_firewall_policy_rules

  action                  = each.value.action
  direction               = each.value.direction
  firewall_policy         = each.value.firewall_policy
  priority                = each.value.priority
  deletion_policy         = each.value.deletion_policy
  description             = each.value.description
  disabled                = each.value.disabled
  enable_logging          = each.value.enable_logging
  project                 = each.value.project
  region                  = each.value.region
  rule_name               = each.value.rule_name
  security_profile_group  = each.value.security_profile_group
  target_forwarding_rules = each.value.target_forwarding_rules
  target_service_accounts = each.value.target_service_accounts
  target_type             = each.value.target_type
  tls_inspect             = each.value.tls_inspect

  match {
    dest_address_groups       = each.value.match.dest_address_groups
    dest_fqdns                = each.value.match.dest_fqdns
    dest_ip_ranges            = each.value.match.dest_ip_ranges
    dest_network_context      = each.value.match.dest_network_context
    dest_region_codes         = each.value.match.dest_region_codes
    dest_threat_intelligences = each.value.match.dest_threat_intelligences
    dynamic "layer4_configs" {
      for_each = each.value.match.layer4_configs
      content {
        ip_protocol = layer4_configs.value.ip_protocol
        ports       = layer4_configs.value.ports
      }
    }
    src_address_groups  = each.value.match.src_address_groups
    src_fqdns           = each.value.match.src_fqdns
    src_ip_ranges       = each.value.match.src_ip_ranges
    src_network_context = each.value.match.src_network_context
    src_networks        = each.value.match.src_networks
    src_region_codes    = each.value.match.src_region_codes
    dynamic "src_secure_tags" {
      for_each = each.value.match.src_secure_tags != null ? each.value.match.src_secure_tags : []
      content {
        name = src_secure_tags.value.name
      }
    }
    src_threat_intelligences = each.value.match.src_threat_intelligences
  }

  dynamic "target_secure_tags" {
    for_each = each.value.target_secure_tags != null ? each.value.target_secure_tags : []
    content {
      name = target_secure_tags.value.name
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

