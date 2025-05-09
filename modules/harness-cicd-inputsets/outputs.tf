output "input_set_ids" {
  value = [for input_set in harness_platform_input_set.this : input_set.id]
}
