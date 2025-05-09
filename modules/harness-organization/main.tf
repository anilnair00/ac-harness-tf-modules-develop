locals {
  config        = var.yaml_config
  organizations = local.config.organizations
}

resource "harness_platform_organization" "org" {
  for_each = { for org in local.organizations : org.identifier => org }

  name        = each.value.name
  identifier  = each.value.identifier
  description = each.value.description
  tags        = var.tags
}