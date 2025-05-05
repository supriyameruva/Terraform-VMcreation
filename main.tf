provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}
data "azurerm_key_vault" "example" {
  name                = var.keyvault_name
  resource_group_name = var.key_vault_rg
}

data "azurerm_key_vault_secret" "admin_username" {
  name         = "admin-username"
  key_vault_id = data.azurerm_key_vault.example.id
}

data "azurerm_key_vault_secret" "admin_password" {
  name         = "admin-password"
  key_vault_id = data.azurerm_key_vault.example.id
}
module "vm" {
  source              = "./modules/vm"
  resource_group_name = var.resource_group_name
  location            = var.location
  admin_username      = data.azurerm_key_vault_secret.admin_username.value
  admin_password     = data.azurerm_key_vault_secret.admin_password.value
}
