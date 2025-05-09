output "pipeline_id" {
  description = "The ID of the created pipeline"
  value       = harness_platform_pipeline.this.id
}

output "pipeline_name" {
  description = "The name of the created pipeline"
  value       = harness_platform_pipeline.this.name
}
