terraform {
  backend "azurerm" {
    resource_group_name   = "tfstate"
    storage_account_name  = "tfstateanis1"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.34.0"
    }
  }
}

provider "azurerm" {
    features {}    
}

module "connectedrg" {
    # or remote git repo with ?ref=verion    
    source = "./modules/contoso-az-connectedrg"       
     
    rg_names = var.rg_names
    vnets = var.vnets
}