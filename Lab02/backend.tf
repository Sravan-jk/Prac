terraform {
  backend "azurerm" {}
  resource_group_name  = "Terra-rg"
  storage_account_name = "newremotestate"
  container_name       = "statefiles"
  key                  = "test.tfstate"
}