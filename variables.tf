variable "network_firewall_network_firewall_policy_application_groups_lookup" {
  description = <<EOT
Map of network_firewall_network_firewall_policy_application_groups_lookup, attributes below
Required:
    - network_firewall_policy_id
Optional:
    - display_name
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    network_firewall_policy_id = string
    display_name               = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

