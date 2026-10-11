data "databricks_entity_tag_assignment" "entity_tag_assignment_lookup" {
  for_each = var.entity_tag_assignment_lookup

  entity_name     = each.value.entity_name
  entity_type     = each.value.entity_type
  tag_key         = each.value.tag_key
  provider_config = each.value.provider_config
}

