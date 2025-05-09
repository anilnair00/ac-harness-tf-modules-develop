variable "services" {
  description = "List of services to create"
  type = list(object({
    identifier = string
    name       = string
    org_id     = string
    project_id = string
    yaml       = string
  }))
}

variable "tags" {
  type    = list(string)
  default = ["ManagedBy:Terraform"]
}