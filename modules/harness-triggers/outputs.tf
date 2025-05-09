output "trigger_ids" {
  value = [for trigger in harness_platform_triggers.this : trigger.id]
}