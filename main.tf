
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

  subscription_id = "45d2c8fb-faba-4dc1-ab43-5ad9451eef1c"
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
