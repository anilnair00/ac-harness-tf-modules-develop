output "_ids" {
  value = [for infrastructure in harness_platform_infrastructure.this : infrastructure.id]
}