variable "workspaces" {
  type = list(object({
    identifier              = string
    name                    = optional(string)
    repository              = string
    provisioner_type        = string
    org_id                  = string
    project_id              = string
    cost_estimation_enabled = bool
    repository_path         = string
    repository_branch       = string
    provisioner_version     = string
    provider_connector      = string
    repository_connector    = string
    description             = optional(string)
    terraform_variables = list(object({
      key        = string
      value      = string
      value_type = string # Required by the resource
    }))
    environment_variables = list(object({
      key        = string
      value      = string
      value_type = string # Required by the resource
    }))
  }))
}
