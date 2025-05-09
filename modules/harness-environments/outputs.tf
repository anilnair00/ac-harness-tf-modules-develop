output "environment_ids" {
  value = [for environment in harness_platform_environment.this : environment.id]
}
