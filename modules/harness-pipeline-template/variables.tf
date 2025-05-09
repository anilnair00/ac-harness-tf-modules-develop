variable "name" {
  description = "The name of the pipeline"
  type        = string
}

variable "identifier" {
  description = "The identifier of the pipeline"
  type        = string
}

variable "org_id" {
  description = "The organization ID where the pipeline is created"
  type        = string
}

variable "project_id" {
  description = "The project ID where the pipeline is created"
  type        = string
}

variable "template_version" {
  description = "Version Label for Template"
  type        = string
}

variable "branch_name" {
  description = "Name of the branch"
  type        = string
  default     = null
}

variable "file_path" {
  description = "File path of the Entity in the repository"
  type        = string
  default     = null
}

variable "repository_connector" {
  description = "Identifier of the Harness Connector used for importing entity from Git"
  type        = string
  default     = null
}

variable "store_type" {
  description = "store type of the entity"
  type        = string
  default     = null
}

variable "repository_name" {
  description = "Name of the repository"
  type        = string
  default     = null
}

variable "yaml" {
  description = "The full YAML definition of the pipeline"
  type        = string
}

variable "tags" {
  type    = list(string)
  default = ["ManagedBy:Terraform"]
}