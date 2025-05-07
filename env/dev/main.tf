module "rg_module" {
  source   = "../../modules/rg"
  child_rg = var.root_rg
}

module "str_module" {
  depends_on = [module.rg_module]
  source     = "../../modules/sa"
  child_str  = var.root_str

}

module "vnet_module" {
  depends_on = [module.rg_module]
  source     = "../../modules/vnet"
  child_vnet = var.root_vnet
}

module "subnet_module" {
  depends_on   = [module.vnet_module]
  source       = "../../modules/subnet"
  child_subnet = var.root_subnet
}

module "public_ip_module" {
  depends_on      = [module.rg_module]
  source          = "../../modules/public_ip"
  child_public_ip = var.root_public_ip

}

module "nsg_module" {
  depends_on = [module.rg_module]
  source     = "../../modules/nsg"
  child_nsg  = var.root_nsg
}

# module "nic_module" {
#   depends_on = [module.rg_module, module.subnet_module, module.public_ip_module, module.nsg_module]
#   source     = "../../modules/nic"
#   child_nic  = var.root_nic
#   child_subnet = var.root_subnet
#   child_public_ip = var.root_public_ip


# }
