resource "harness_platform_workspace" "workspace" {
#  for_each = { for idx, workspace in var.workspaces : idx => workspace }
  identifier              = var.workspace.identifier
  name                    = var.workspace.name
  org_id                  = var.workspace.org_id
  project_id              = var.workspace.project_id
  cost_estimation_enabled = var.workspace.cost_estimation_enabled
  provisioner_type        = var.workspace.provisioner_type
  repository              = var.workspace.repository
  repository_path         = var.workspace.repository_path
  repository_branch       = var.workspace.repository_branch
  provisioner_version     = var.workspace.provisioner_version
  provider_connector      = var.workspace.provider_connector
  repository_connector    = var.workspace.repository_connector
  description             = try(var.workspace.description, null)

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
