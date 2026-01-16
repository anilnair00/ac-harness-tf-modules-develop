resource "harness_platform_workspace" "workspaces" {
#  for_each = { for idx, workspace in var.workspaces : idx => workspace }
  identifier              = var.workspaces.identifier
  name                    = var.workspaces.name
  org_id                  = var.workspaces.org_id
  project_id              = var.workspaces.project_id
  cost_estimation_enabled = var.workspaces.cost_estimation_enabled
#  project_name            = var.workspaces.project_name
  provisioner_type        = var.workspaces.provisioner_type
  repository              = var.workspaces.repository
  repository_path         = var.workspaces.repository_path
  repository_branch       = var.workspaces.repository_branch
  provisioner_version     = var.workspaces.provisioner_version
  provider_connector      = var.workspaces.provider_connector
  repository_connector    = var.workspaces.repository_connector
  description             = try(var.workspaces.description, null)

  #################################
  # Terraform Variables (Optional)
  #################################
  terraform_variable {
    for_each = var.workspace.terraform_variables
    key        = terraform_variable.value.key
    value      = terraform_variable.value.value
    value_type = terraform_variable.value.value_type
  }

  #################################
  # Environment Variables (Optional)
  #################################
  environment_variable {
    for_each = var.workspace.environment_variables
    key        = environment_variable.value.key
    value      = environment_variable.value.value
    value_type = environment_variable.value.value_type
  }
}
