variable "input_sets" {
  description = "List of input sets to create"
  type = list(object({
    identifier  = string
    name        = string
    org_id      = string
    project_id  = string
    yaml        = string
    pipeline_id = string
  }))
}

variable "tags" {
  type = list(string)
}