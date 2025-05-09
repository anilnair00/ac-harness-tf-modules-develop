output "service_ids" {
  value = [for service in harness_platform_service.this : service.id]
}
