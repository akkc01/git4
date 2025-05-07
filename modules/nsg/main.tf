resource "azurerm_network_security_group" "nsg" {
  for_each            = var.child_nsg
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

 security_rule {
    name                       = "RDP"
    priority                   = 1000
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "3389"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  
  security_rule {
    name                       = "web"
    priority                   = 1001
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  }

# # Create security rules for RDP and HTTP
# resource "azurerm_network_security_rule" "allow_rdp" {
#   for_each = var.child_nsg

#   name                        = "Allow-RDP"
#   priority                    = 100
#   direction                   = "Inbound"
#   access                      = "Allow"
#   protocol                    = "Tcp"
#   source_port_range           = "*"
#   destination_port_range      = "3389"
#   source_address_prefix       = "*"
#   destination_address_prefix  = "*"
#   resource_group_name         = "example-rg" # Adjust as needed
#   network_security_group_name = azurerm_network_security_group.nsg[each.key].name
# }

# resource "azurerm_network_security_rule" "allow_http" {
#   for_each = var.child_nsg

#   name                        = "Allow-HTTP"
#   priority                    = 200
#   direction                   = "Inbound"
#   access                      = "Allow"
#   protocol                    = "Tcp"
#   source_port_range           = "*"
#   destination_port_range      = "80"
#   source_address_prefix       = "*"
#   destination_address_prefix  = "*"
#   resource_group_name         = "example-rg" # Adjust as needed
#   network_security_group_name = azurerm_network_security_group.nsg[each.key].name
# }
