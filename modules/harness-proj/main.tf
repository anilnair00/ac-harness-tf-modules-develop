locals {
  csv_data = var.csv_data
}

resource "harness_platform_project" "project" {
  for_each = { for idx, row in local.csv_data : idx => row }

  name        = each.value.name
  identifier  = each.value.identifier
  description = each.value.description
  org_id      = each.value.org_id
}