# resource "azurerm_network_interface" "nic" {
#   for_each = var.child_nic

#   name                = each.value.name
#   location            = each.value.location
#   resource_group_name = each.value.resource_group_name
#   #private_ip_address  = each.value.private_ip_address

#   ip_configuration {
#     name                          = "devconfiguration-internal"
#     private_ip_address_allocation = "Dynamic"
#     public_ip_address_id          = var.child_public_ip[each.key]
#     subnet_id                     = var.child_subnet[each.key]
#     # Ensure that the variable 'child_subnet' is properly defined in variables.tf
#   }

# }
