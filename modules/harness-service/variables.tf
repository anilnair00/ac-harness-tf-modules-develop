variable "services" {
  description = "List of input sets to create"
  type = list(object({
    identifier = string
    org_id     = string
    project_id = string
    name       = string
    yaml       = string
  }))
}

variable "tags" {
  type = list(string)
  default = ["ManagedBy:Terraform"]
}
