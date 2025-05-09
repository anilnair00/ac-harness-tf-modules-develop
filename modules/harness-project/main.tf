locals {
  config   = var.yaml_config
  projects = local.config.projects
}

resource "harness_platform_project" "project" {
  for_each = { for proj in local.projects : proj.identifier => proj }

  name        = each.value.name
  identifier  = each.value.identifier
  description = each.value.description
  org_id      = each.value.org_id
}