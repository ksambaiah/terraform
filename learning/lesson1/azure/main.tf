data "azurerm_client_config" "current" {}

terraform {
  backend "local" {
  }
}

# Create Resource Group
resource "azurerm_resource_group" "samkilar" {
  name     = var.resource_group_name
  location = var.location
}

# Create Storage Account
resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.samkilar.name
  location                 = azurerm_resource_group.samkilar.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = local.environment
  }
}
