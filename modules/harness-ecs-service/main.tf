resource "harness_platform_service" "this" {
  for_each = { for service in var.services : service.identifier => service }
  # for_each = { for idx, svc in var.services : idx => svc }

  identifier = each.value.identifier
  name       = each.value.name
  org_id     = each.value.org_id
  project_id = each.value.project_id
  yaml       = each.value.yaml

  tags = var.tags
}