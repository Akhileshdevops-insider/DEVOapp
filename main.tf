
terraform {
required_providers {
  azurerm = {
    source  = "hashicorp/azurerm"
    version = "~> 3.0"
  }
}
backend "azurerm" {
  resource_group_name  = "rg_pipeline"
  storage_account_name = "pipestrg"
  container_name       = "mypipecon"
  key                  = "dev.terraform.tfstate"
}

 
}


provider "azurerm" {
  features {}
  subscription_id = "25a58ceb-2570-42e2-9d35-00b46979c51a"
}

resource "azurerm_resource_group" "rg2" {
  name     = "GRpipe"
  location = "West Europe"
}

resource "azurerm_storage_account" "exstg" {
  name                     = "strgpipe"
  resource_group_name      = azurerm_resource_group.rg2.name
  location                 = azurerm_resource_group.rg2.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

resource "azurerm_storage_account" "exstg1" {
  name                     = "strgpipe1"
  resource_group_name      = azurerm_resource_group.rg2.name
  location                 = azurerm_resource_group.rg2.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}


