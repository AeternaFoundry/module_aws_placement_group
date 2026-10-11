output "placement_groups_id" {
  description = "Map of id values across all placement_groups, keyed the same as var.placement_groups"
  value       = { for k, v in aws_placement_group.placement_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "placement_groups_arn" {
  description = "Map of arn values across all placement_groups, keyed the same as var.placement_groups"
  value       = { for k, v in aws_placement_group.placement_groups : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "placement_groups_name" {
  description = "Map of name values across all placement_groups, keyed the same as var.placement_groups"
  value       = { for k, v in aws_placement_group.placement_groups : k => v.name if v.name != null && length(v.name) > 0 }
}
output "placement_groups_partition_count" {
  description = "Map of partition_count values across all placement_groups, keyed the same as var.placement_groups"
  value       = { for k, v in aws_placement_group.placement_groups : k => v.partition_count if v.partition_count != null }
}
output "placement_groups_placement_group_id" {
  description = "Map of placement_group_id values across all placement_groups, keyed the same as var.placement_groups"
  value       = { for k, v in aws_placement_group.placement_groups : k => v.placement_group_id if v.placement_group_id != null && length(v.placement_group_id) > 0 }
}
output "placement_groups_region" {
  description = "Map of region values across all placement_groups, keyed the same as var.placement_groups"
  value       = { for k, v in aws_placement_group.placement_groups : k => v.region if v.region != null && length(v.region) > 0 }
}
output "placement_groups_spread_level" {
  description = "Map of spread_level values across all placement_groups, keyed the same as var.placement_groups"
  value       = { for k, v in aws_placement_group.placement_groups : k => v.spread_level if v.spread_level != null && length(v.spread_level) > 0 }
}
output "placement_groups_strategy" {
  description = "Map of strategy values across all placement_groups, keyed the same as var.placement_groups"
  value       = { for k, v in aws_placement_group.placement_groups : k => v.strategy if v.strategy != null && length(v.strategy) > 0 }
}
output "placement_groups_tags" {
  description = "Map of tags values across all placement_groups, keyed the same as var.placement_groups"
  value       = { for k, v in aws_placement_group.placement_groups : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "placement_groups_tags_all" {
  description = "Map of tags_all values across all placement_groups, keyed the same as var.placement_groups"
  value       = { for k, v in aws_placement_group.placement_groups : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

