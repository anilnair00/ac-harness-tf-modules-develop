resource "harness_platform_environment" "this" {
  for_each = { for environment in var.environments : environment.identifier => environment }

  identifier = each.value.identifier
  name       = each.value.name
  org_id     = each.value.org_id
  project_id = each.value.project_id
  type       = each.value.env_type
  yaml       = each.value.yaml
}