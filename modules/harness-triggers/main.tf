resource "harness_platform_triggers" "this" {
  for_each = { for trigger in var.triggers : trigger.identifier => trigger }

  identifier = each.value.identifier
  name       = each.value.name
  org_id     = each.value.org_id
  project_id = each.value.project_id
  yaml       = each.value.yaml
  target_id  = each.value.target_id

}
