# resource "harness_platform_organization" "org" {
#   name        = var.name
#   identifier  = var.identifier 
#   description = var.description  
# }

locals {
  csv_data = var.csv_data
}

resource "harness_platform_organization" "org" {
  for_each = { for idx, row in local.csv_data : idx => row }

  name        = each.value.name
  identifier  = each.value.identifier
  description = each.value.description
  tags        = var.tags
}