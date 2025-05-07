variable "root_rg" {
  description = "A map of root resource groups to create."
  type = map(object({
    name     = string
    location = string
  }))
}

variable "root_str" {
  description = "A map of root storage accounts to create."
  type = map(object({
    name                     = string
    resource_group_name      = string
    location                 = string
    account_tier             = string
    account_replication_type = string
  }))

}

variable "root_vnet" {
  description = "A map of root vnets to create."
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    address_space       = list(string)

  }))

}

variable "root_subnet" {
  description = "A map of root subnets to create."
  type = map(object({
    name                 = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefix       = list(string)
    #service_endpoints    = list(string)
  }))

}

variable "root_public_ip" {
  description = "A map of root public IPs to create."
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    allocation_method   = string
    sku                 = string
  }))

}

variable "root_nsg" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
  }))
  description = "A map of Network Security Groups to create"
}


# variable "root_nic" {
#   type = map(object({
#     name                = string
#     location            = string
#     resource_group_name = string
#     subnet_name         = string
#     public_ip_address_id = optional(string) # Optional if no public IP
#     private_ip_address   = optional(string) # Optional for Static IPs
#     allocation_method    = string           # Static or Dynamic

#   }))
# }
