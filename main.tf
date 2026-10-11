resource "oci_nosql_index" "nosql_indices" {
  for_each = var.nosql_indices

  name             = each.value.name
  table_name_or_id = each.value.table_name_or_id
  compartment_id   = each.value.compartment_id
  is_if_not_exists = each.value.is_if_not_exists

  dynamic "keys" {
    for_each = each.value.keys
    content {
      column_name     = keys.value.column_name
      json_field_type = keys.value.json_field_type
      json_path       = keys.value.json_path
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

