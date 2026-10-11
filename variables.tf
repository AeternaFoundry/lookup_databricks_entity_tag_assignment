variable "entity_tag_assignment_lookup" {
  description = <<EOT
Map of entity_tag_assignment_lookup, attributes below
Required:
    - entity_name
    - entity_type
    - tag_key
Optional:
    - provider_config
EOT

  type = map(object({
    entity_name = string
    entity_type = string
    tag_key     = string
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

