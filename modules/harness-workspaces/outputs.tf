output "workspace_ids" {
  value = [for ws in harness_platform_workspace.workspace : ws.id]
}