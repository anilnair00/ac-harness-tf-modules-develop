resource "harness_platform_pipeline" "this" {
  name       = var.name
  identifier = var.identifier
  org_id     = var.org_id
  project_id = var.project_id
  yaml       = var.yaml # YAML definition for the pipeline
  
  tags       = var.tags
}
