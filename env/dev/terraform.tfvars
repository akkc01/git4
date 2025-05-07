root_rg = {
  rg1 = {
    name     = "dev_rg1"
    location = "East US"
  },
  rg2 = {
    name     = "dev_rg2"
    location = "central india"
  }
}


root_str = {
  str1 = {
    name                     = "devstr1024"
    resource_group_name      = "dev_rg1"
    location                 = "East US"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  },
  str2 = {
    name                     = "devstr2048"
    resource_group_name      = "dev_rg2"
    location                 = "central india"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}

root_vnet = {
  vnet1 = {
    name                = "devvnet1"
    address_space       = ["192.168.1.0/24"]
    resource_group_name = "dev_rg1"
    location            = "East US"
  },
  vnet2 = {
    name                = "devvnet2"
    address_space       = ["192.168.2.0/24"]
    resource_group_name = "dev_rg1"
    location            = "East US"
  }
}

root_subnet = {
  sub1 = {
    name                 = "devsub1"
    resource_group_name  = "dev_rg1"
    virtual_network_name = "devvnet1"
    address_prefix       = ["192.168.1.0/25"]
  },
  sub2 = {
    name                 = "devsub2"
    resource_group_name  = "dev_rg1"
    virtual_network_name = "devvnet1"
    address_prefix       = ["192.168.1.128/25"]
  }
}

root_public_ip = {
  pip1 = {
    name                = "devpip1"
    resource_group_name = "dev_rg1"
    location            = "East US"
    allocation_method   = "Static"
    sku                 = "Standard"
  },
  pip2 = {
    name                = "devpip2"
    resource_group_name = "dev_rg2"
    location            = "central india"
    allocation_method   = "Static"
    sku                 = "Standard"
  }
}


# terraform.tfvars - Root module variable values
root_nsg = {
    nsg1 = {
      name     = "NSG-1"
      location = "East US"
      resource_group_name = "dev_rg1"
    }
  }

# root_nic = {
#   nic1 = {
#     name                = "devnic1"
#     location            = "East US" 
#     resource_group_name = "dev_rg1" 
#     subnet_name         = "devsub1" 
#   },
#   nic2 = {
#     name                = "devnic2"
#     location            = "East US" 
#     resource_group_name = "dev_rg1" 
#     subnet_name         = "devsub2" 

#   }
# }
