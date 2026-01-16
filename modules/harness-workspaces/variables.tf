variable "workspaces" {
  type = object({
    identifier              = string
    name                    = optional(string)
    repository              = string
    provisioner_type        = string
    org_id                  = string
    project_id              = string
#    project_name            = string
    cost_estimation_enabled = bool
    repository_path         = string
    repository_branch       = string
    provisioner_version     = string
    provider_connector      = string
    repository_connector    = string
    description             = optional(string)
  })
}
