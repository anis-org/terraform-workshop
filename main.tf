terraform {
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