terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}

resource "random_pet" "main" {}

resource "azurerm_resource_group" "main" {
  name     = random_pet.main.id
  location = "germanywestcentral"
}
