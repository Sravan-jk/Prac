terraform {
  backend "azurerm" {}
  resource_group_name  = "Terra-rg"
  storage_account_name = "remotestate"
  container_name       = "statefiles"
  key                  = "test.tfstate"
}