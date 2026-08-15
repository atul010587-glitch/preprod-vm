module "resource_group" {
  source = "../../modules/azurerm resource group"
  rgs    = var.rgs
}
module "virtual_network" {
  source = "../../modules/azurerm virtual network"
  vnets  = var.vnets
  # depends_on = [module.resource_group]
}
module "subnets" {
  source     = "../../modules/azurerm subnet"
  subnets    = var.subnets
  depends_on = [module.virtual_network]
}
module "public_ip" {
  source = "../../modules/azurerm public ip"
  pip    = var.pip
  # depends_on = [module.resource_group]
}
module "virtual_machine" {
  source     = "../../modules/azurerm virtual machine"
  vms        = var.vms
  depends_on = [module.subnets, module.public_ip]
}