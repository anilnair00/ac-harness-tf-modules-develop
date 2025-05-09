resource "harness_platform_infrastructure" "this" {
  for_each = { for infrastructure in var.infrastructures : infrastructure.identifier => infrastructure }

  identifier      = each.value.identifier
  name            = each.value.name
  org_id          = each.value.org_id
  project_id      = each.value.project_id
  env_id          = each.value.env_id
  type            = each.value.env_type
  deployment_type = each.value.deployment_type

  git_details {
    store_type    = each.value.store_type
    connector_ref = each.value.repository_connector
    repo_name     = each.value.repository_name
    file_path     = each.value.file_path
    branch        = each.value.branch_name
  }

  yaml = each.value.yaml
  tags = var.tags

  # depends_on = [
  #   harness_platform_infrastructure.this["${each.value.identifier}"]
  # ]
}