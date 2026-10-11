output "compute_region_network_firewall_policy_rules_id" {
  description = "Map of id values across all compute_region_network_firewall_policy_rules, keyed the same as var.compute_region_network_firewall_policy_rules except keys with no id are omitted"
  value       = { for k, v in google_compute_region_network_firewall_policy_rule.compute_region_network_firewall_policy_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_region_network_firewall_policy_rules_action" {
  description = "Map of action values across all compute_region_network_firewall_policy_rules, keyed the same as var.compute_region_network_firewall_policy_rules except keys with no action are omitted"
  value       = { for k, v in google_compute_region_network_firewall_policy_rule.compute_region_network_firewall_policy_rules : k => v.action if v.action != null && length(v.action) > 0 }
}
output "compute_region_network_firewall_policy_rules_creation_timestamp" {
  description = "Map of creation_timestamp values across all compute_region_network_firewall_policy_rules, keyed the same as var.compute_region_network_firewall_policy_rules except keys with no creation_timestamp are omitted"
  value       = { for k, v in google_compute_region_network_firewall_policy_rule.compute_region_network_firewall_policy_rules : k => v.creation_timestamp if v.creation_timestamp != null && length(v.creation_timestamp) > 0 }
}
output "compute_region_network_firewall_policy_rules_deletion_policy" {
  description = "Map of deletion_policy values across all compute_region_network_firewall_policy_rules, keyed the same as var.compute_region_network_firewall_policy_rules except keys with no deletion_policy are omitted"
  value       = { for k, v in google_compute_region_network_firewall_policy_rule.compute_region_network_firewall_policy_rules : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "compute_region_network_firewall_policy_rules_description" {
  description = "Map of description values across all compute_region_network_firewall_policy_rules, keyed the same as var.compute_region_network_firewall_policy_rules except keys with no description are omitted"
  value       = { for k, v in google_compute_region_network_firewall_policy_rule.compute_region_network_firewall_policy_rules : k => v.description if v.description != null && length(v.description) > 0 }
}
output "compute_region_network_firewall_policy_rules_direction" {
  description = "Map of direction values across all compute_region_network_firewall_policy_rules, keyed the same as var.compute_region_network_firewall_policy_rules except keys with no direction are omitted"
  value       = { for k, v in google_compute_region_network_firewall_policy_rule.compute_region_network_firewall_policy_rules : k => v.direction if v.direction != null && length(v.direction) > 0 }
}
output "compute_region_network_firewall_policy_rules_disabled" {
  description = "Map of disabled values across all compute_region_network_firewall_policy_rules, keyed the same as var.compute_region_network_firewall_policy_rules except keys with no disabled are omitted"
  value       = { for k, v in google_compute_region_network_firewall_policy_rule.compute_region_network_firewall_policy_rules : k => v.disabled if v.disabled != null }
}
output "compute_region_network_firewall_policy_rules_enable_logging" {
  description = "Map of enable_logging values across all compute_region_network_firewall_policy_rules, keyed the same as var.compute_region_network_firewall_policy_rules except keys with no enable_logging are omitted"
  value       = { for k, v in google_compute_region_network_firewall_policy_rule.compute_region_network_firewall_policy_rules : k => v.enable_logging if v.enable_logging != null }
}
output "compute_region_network_firewall_policy_rules_firewall_policy" {
  description = "Map of firewall_policy values across all compute_region_network_firewall_policy_rules, keyed the same as var.compute_region_network_firewall_policy_rules except keys with no firewall_policy are omitted"
  value       = { for k, v in google_compute_region_network_firewall_policy_rule.compute_region_network_firewall_policy_rules : k => v.firewall_policy if v.firewall_policy != null && length(v.firewall_policy) > 0 }
}
output "compute_region_network_firewall_policy_rules_kind" {
  description = "Map of kind values across all compute_region_network_firewall_policy_rules, keyed the same as var.compute_region_network_firewall_policy_rules except keys with no kind are omitted"
  value       = { for k, v in google_compute_region_network_firewall_policy_rule.compute_region_network_firewall_policy_rules : k => v.kind if v.kind != null && length(v.kind) > 0 }
}
output "compute_region_network_firewall_policy_rules_match" {
  description = "Map of match values across all compute_region_network_firewall_policy_rules, keyed the same as var.compute_region_network_firewall_policy_rules except keys with no match are omitted"
  value       = { for k, v in google_compute_region_network_firewall_policy_rule.compute_region_network_firewall_policy_rules : k => one(v.match) if v.match != null && length(v.match) > 0 }
}
output "compute_region_network_firewall_policy_rules_priority" {
  description = "Map of priority values across all compute_region_network_firewall_policy_rules, keyed the same as var.compute_region_network_firewall_policy_rules except keys with no priority are omitted"
  value       = { for k, v in google_compute_region_network_firewall_policy_rule.compute_region_network_firewall_policy_rules : k => v.priority if v.priority != null }
}
output "compute_region_network_firewall_policy_rules_project" {
  description = "Map of project values across all compute_region_network_firewall_policy_rules, keyed the same as var.compute_region_network_firewall_policy_rules except keys with no project are omitted"
  value       = { for k, v in google_compute_region_network_firewall_policy_rule.compute_region_network_firewall_policy_rules : k => v.project if v.project != null && length(v.project) > 0 }
}
output "compute_region_network_firewall_policy_rules_region" {
  description = "Map of region values across all compute_region_network_firewall_policy_rules, keyed the same as var.compute_region_network_firewall_policy_rules except keys with no region are omitted"
  value       = { for k, v in google_compute_region_network_firewall_policy_rule.compute_region_network_firewall_policy_rules : k => v.region if v.region != null && length(v.region) > 0 }
}
output "compute_region_network_firewall_policy_rules_rule_name" {
  description = "Map of rule_name values across all compute_region_network_firewall_policy_rules, keyed the same as var.compute_region_network_firewall_policy_rules except keys with no rule_name are omitted"
  value       = { for k, v in google_compute_region_network_firewall_policy_rule.compute_region_network_firewall_policy_rules : k => v.rule_name if v.rule_name != null && length(v.rule_name) > 0 }
}
output "compute_region_network_firewall_policy_rules_rule_tuple_count" {
  description = "Map of rule_tuple_count values across all compute_region_network_firewall_policy_rules, keyed the same as var.compute_region_network_firewall_policy_rules except keys with no rule_tuple_count are omitted"
  value       = { for k, v in google_compute_region_network_firewall_policy_rule.compute_region_network_firewall_policy_rules : k => v.rule_tuple_count if v.rule_tuple_count != null }
}
output "compute_region_network_firewall_policy_rules_security_profile_group" {
  description = "Map of security_profile_group values across all compute_region_network_firewall_policy_rules, keyed the same as var.compute_region_network_firewall_policy_rules except keys with no security_profile_group are omitted"
  value       = { for k, v in google_compute_region_network_firewall_policy_rule.compute_region_network_firewall_policy_rules : k => v.security_profile_group if v.security_profile_group != null && length(v.security_profile_group) > 0 }
}
output "compute_region_network_firewall_policy_rules_target_forwarding_rules" {
  description = "Map of target_forwarding_rules values across all compute_region_network_firewall_policy_rules, keyed the same as var.compute_region_network_firewall_policy_rules except keys with no target_forwarding_rules are omitted"
  value       = { for k, v in google_compute_region_network_firewall_policy_rule.compute_region_network_firewall_policy_rules : k => v.target_forwarding_rules if v.target_forwarding_rules != null && length(v.target_forwarding_rules) > 0 }
}
output "compute_region_network_firewall_policy_rules_target_secure_tags" {
  description = "Map of target_secure_tags values across all compute_region_network_firewall_policy_rules, keyed the same as var.compute_region_network_firewall_policy_rules except keys with no target_secure_tags are omitted"
  value       = { for k, v in google_compute_region_network_firewall_policy_rule.compute_region_network_firewall_policy_rules : k => v.target_secure_tags if v.target_secure_tags != null && length(v.target_secure_tags) > 0 }
}
output "compute_region_network_firewall_policy_rules_target_service_accounts" {
  description = "Map of target_service_accounts values across all compute_region_network_firewall_policy_rules, keyed the same as var.compute_region_network_firewall_policy_rules except keys with no target_service_accounts are omitted"
  value       = { for k, v in google_compute_region_network_firewall_policy_rule.compute_region_network_firewall_policy_rules : k => v.target_service_accounts if v.target_service_accounts != null && length(v.target_service_accounts) > 0 }
}
output "compute_region_network_firewall_policy_rules_target_type" {
  description = "Map of target_type values across all compute_region_network_firewall_policy_rules, keyed the same as var.compute_region_network_firewall_policy_rules except keys with no target_type are omitted"
  value       = { for k, v in google_compute_region_network_firewall_policy_rule.compute_region_network_firewall_policy_rules : k => v.target_type if v.target_type != null && length(v.target_type) > 0 }
}
output "compute_region_network_firewall_policy_rules_tls_inspect" {
  description = "Map of tls_inspect values across all compute_region_network_firewall_policy_rules, keyed the same as var.compute_region_network_firewall_policy_rules except keys with no tls_inspect are omitted"
  value       = { for k, v in google_compute_region_network_firewall_policy_rule.compute_region_network_firewall_policy_rules : k => v.tls_inspect if v.tls_inspect != null }
}

