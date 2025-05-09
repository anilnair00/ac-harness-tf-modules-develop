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

variable "yaml" {
  description = "The full YAML definition of the pipeline"
  type        = string
}

variable "tags" {
  type = list(string)
  default = null
}
