resource "harness_platform_workspace" "workspace" {
  for_each = { for idx, workspace in var.workspaces : idx => workspace }

  identifier              = each.value.identifier
  name                    = each.value.name
  org_id                  = each.value.org_id
  project_id              = each.value.project_id
  cost_estimation_enabled = each.value.cost_estimation_enabled
  provisioner_type        = each.value.provisioner_type
  repository              = each.value.repository
  repository_path         = each.value.repository_path
  repository_branch       = each.value.repository_branch
  provisioner_version     = each.value.provisioner_version
  provider_connector      = each.value.provider_connector
  repository_connector    = each.value.repository_connector
  description             = each.value.description
  #tags                    = each.value.tags

  # Terraform and Environment Variables
  dynamic "terraform_variable" {
    for_each = each.value.terraform_variables
    content {
      key        = terraform_variable.value.key
      value      = terraform_variable.value.value
      value_type = terraform_variable.value.value_type # Ensure this is defined in variables.tf
    }
  }

  # Define a block for environment_variable
  dynamic "environment_variable" {
    for_each = each.value.environment_variables
    content {
      key        = environment_variable.value.key
      value      = environment_variable.value.value
      value_type = environment_variable.value.value_type # Ensure this is defined in variables.tf
    }
  }
}
