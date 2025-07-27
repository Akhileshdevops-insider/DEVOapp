
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  required_version = ">= 0.12"
}


provider "azurerm" {

  features {}

  subscription_id = "25a58ceb-2570-42e2-9d35-00b46979c51a"
}




resource "azurerm_resource_group" "example1" {
  name     = "GRpipe"
  location = "West Europe"
}

resource "azurerm_storage_account" "exstg" {

  name                     = "strgpipe"
  resource_group_name      = "GRpipe"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "GRS"


}



resource "azurerm_storage_account" "exstg" {

  name                     = "strgpipe"
  resource_group_name      = "GRpipe"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "GRS"


}

resource "azurerm_storage_account" "exstg1" {

  name                     = "strgpipe1"
  resource_group_name      = "GRpipe"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "GRS"


}
