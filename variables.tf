variable "nosql_indices" {
  description = <<EOT
Map of nosql_indices, attributes below
Required:
    - name
    - table_name_or_id
    - keys (block):
        - column_name (required)
        - json_field_type (optional)
        - json_path (optional)
Optional:
    - compartment_id
    - is_if_not_exists
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name             = string
    table_name_or_id = string
    compartment_id   = optional(string)
    is_if_not_exists = optional(bool)
    keys = list(object({
      column_name     = string
      json_field_type = optional(string)
      json_path       = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.nosql_indices : (
        length(v.keys) >= 1
      )
    ])
    error_message = "Each keys list must contain at least 1 items"
  }
}

