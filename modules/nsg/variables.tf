# # variables.tf - Child module variables

variable "child_nsg" {
  type = map(object({
    name     = string
    location = string
    resource_group_name = string
  }))
  description = "A map of Network Security Groups to create"
}
