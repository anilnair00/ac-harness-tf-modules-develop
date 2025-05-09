resource "harness_platform_input_set" "this" {
  for_each = { for input_set in var.input_sets : "${input_set.identifier}-${input_set.pipeline_id}" => input_set }

  identifier  = each.value.identifier
  name        = each.value.name
  org_id      = each.value.org_id
  project_id  = each.value.project_id
  yaml        = each.value.yaml
  pipeline_id = each.value.pipeline_id
}