variable "infrastructures" {
  description = "List of infrastructures to create"
  type = list(object({
    identifier           = string
    org_id               = string
    project_id           = string
    env_id               = string
    name                 = string
    env_type             = string
    deployment_type      = string
    store_type           = string
    repository_connector = string
    repository_name      = string
    file_path            = string
    branch_name          = string
    yaml                 = string
  }))
}

# variable "store_type" {
#   description = "store type of the entity"
#   type        = string
#   default     = null
# }

# variable "repository_connector" {
#   description = "Identifier of the Harness Connector used for importing entity from Git"
#   type        = string
#   default     = null
# }

# variable "repository_name" {
#   description = "Name of the repository"
#   type        = string
#   default     = null
# }

# variable "file_path" {
#   description = "File path of the Entity in the repository"
#   type        = string
#   default     = null
# }

# variable "branch_name" {
#   description = "Name of the branch"
#   type        = string
#   default     = null
# }

variable "tags" {
  type    = list(string)
  default = ["ManagedBy:Terraform"]
}