variable "triggers" {
  description = "List of triggers to create"
  type = list(object({
    identifier = string
    org_id     = string
    project_id = string
    name       = string
    target_id  = string
    yaml       = string
  }))
}
