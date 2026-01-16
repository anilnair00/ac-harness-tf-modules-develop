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


