variable "placement_groups" {
  description = <<EOT
Map of placement_groups, attributes below
Required:
    - name
    - strategy
Optional:
    - partition_count
    - region
    - spread_level
    - tags
    - tags_all
EOT

  type = map(object({
    name            = string
    strategy        = string
    partition_count = optional(number)
    region          = optional(string)
    spread_level    = optional(string)
    tags            = optional(map(string))
    tags_all        = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.placement_groups : (
        v.partition_count == null || (v.partition_count >= 1)
      )
    ])
    error_message = "must be at least 1"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

