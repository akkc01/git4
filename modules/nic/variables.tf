variable "child_nic" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    subnet_name           = string
    
  }))
}


# # variables.tf - NIC module variables

# variable "child_rg" {
#   description = "A map of child resource groups to create."
#   type        = map(object({
#     name     = string
#     location = string
#   }))
# }

variable "child_public_ip" {
  description = "A map of child public IPs to create."
  type        = map(object({
    name                = string
    resource_group_name = string
    location            = string
    allocation_method   = string
    sku                 = string
  }))
}


variable "child_subnet" {
  description = "A map of child subnets to create."
  type        = map(object({
    name                 = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefix       = list(string)
    #service_endpoints    = list(string)
  }))
  
}

# variable "child_nic" {
#   type = map(object({
#     name        = string
#     subnet_name = string
#     private_ip  = string
#     public_ip   = string
#   }))
#   description = "Map of NICs to create"
# }
