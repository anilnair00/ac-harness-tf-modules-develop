resource "harness_platform_pipeline" "this" {
  name       = var.name
  identifier = var.identifier
  org_id     = var.org_id
  project_id = var.project_id

  git_details {
    branch_name = var.branch_name
    # commit_message = "Commit"
    file_path     = var.file_path
    connector_ref = var.repository_connector
    store_type    = var.store_type
    repo_name     = var.repository_name
  }
  yaml = var.yaml

  tags = var.tags
}