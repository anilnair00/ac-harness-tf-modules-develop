variable "input_sets" {
  description = "List of input sets to create"
  type = list(object({
    identifier  = string
    org_id      = string
    project_id  = string
    name        = string
    #env         = string
    #connector   = string
    pipeline_id = string
    yaml        = string
  }))
}

# variable "org_id" {
#   description = "The organization ID"
#   type        = string
# }

# variable "project_id" {
#   description = "The project ID"
#   type        = string
# }

# variable "pipeline_id" {
#   description = "The pipeline ID"
#   type        = string
# }