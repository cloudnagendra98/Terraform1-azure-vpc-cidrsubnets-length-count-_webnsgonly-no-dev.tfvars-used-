terraform {
  required_providers {
    azurerm = {
      version = ">= 3.105.0"
      source  = "hashicorp/azurerm"
    }
  }
  required_version = ">= 1.8.4"
}

provider "azurerm" {
  features {

  }

}