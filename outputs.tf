output "nosql_indices_id" {
  description = "Map of id values across all nosql_indices, keyed the same as var.nosql_indices except keys with no id are omitted"
  value       = { for k, v in oci_nosql_index.nosql_indices : k => v.id if v.id != null && length(v.id) > 0 }
}
output "nosql_indices_compartment_id" {
  description = "Map of compartment_id values across all nosql_indices, keyed the same as var.nosql_indices except keys with no compartment_id are omitted"
  value       = { for k, v in oci_nosql_index.nosql_indices : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "nosql_indices_is_if_not_exists" {
  description = "Map of is_if_not_exists values across all nosql_indices, keyed the same as var.nosql_indices except keys with no is_if_not_exists are omitted"
  value       = { for k, v in oci_nosql_index.nosql_indices : k => v.is_if_not_exists if v.is_if_not_exists != null }
}
output "nosql_indices_keys" {
  description = "Map of keys values across all nosql_indices, keyed the same as var.nosql_indices except keys with no keys are omitted"
  value       = { for k, v in oci_nosql_index.nosql_indices : k => v.keys if v.keys != null && length(v.keys) > 0 }
}
output "nosql_indices_lifecycle_details" {
  description = "Map of lifecycle_details values across all nosql_indices, keyed the same as var.nosql_indices except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_nosql_index.nosql_indices : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "nosql_indices_name" {
  description = "Map of name values across all nosql_indices, keyed the same as var.nosql_indices except keys with no name are omitted"
  value       = { for k, v in oci_nosql_index.nosql_indices : k => v.name if v.name != null && length(v.name) > 0 }
}
output "nosql_indices_state" {
  description = "Map of state values across all nosql_indices, keyed the same as var.nosql_indices except keys with no state are omitted"
  value       = { for k, v in oci_nosql_index.nosql_indices : k => v.state if v.state != null && length(v.state) > 0 }
}
output "nosql_indices_table_id" {
  description = "Map of table_id values across all nosql_indices, keyed the same as var.nosql_indices except keys with no table_id are omitted"
  value       = { for k, v in oci_nosql_index.nosql_indices : k => v.table_id if v.table_id != null && length(v.table_id) > 0 }
}
output "nosql_indices_table_name" {
  description = "Map of table_name values across all nosql_indices, keyed the same as var.nosql_indices except keys with no table_name are omitted"
  value       = { for k, v in oci_nosql_index.nosql_indices : k => v.table_name if v.table_name != null && length(v.table_name) > 0 }
}
output "nosql_indices_table_name_or_id" {
  description = "Map of table_name_or_id values across all nosql_indices, keyed the same as var.nosql_indices except keys with no table_name_or_id are omitted"
  value       = { for k, v in oci_nosql_index.nosql_indices : k => v.table_name_or_id if v.table_name_or_id != null && length(v.table_name_or_id) > 0 }
}

