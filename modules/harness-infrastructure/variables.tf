variable "infrastructures" {
  description = "List of input sets to create"
  type = list(object({
    identifier      = string
    org_id          = string
    project_id      = string
    env_id          = string
    name            = string
    env_type        = string
    deployment_type = string
    yaml            = string
  }))
}

variable "tags" {
  type    = list(string)
  default = ["ManagedBy:Terraform"]
}
