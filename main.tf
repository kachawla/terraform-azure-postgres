terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0"
    }
  }
}

resource "random_id" "resource" {
  keepers = {
    # Generate a new id for every unique resource id
    resource_id = var.context.resource.id
  }

  byte_length = 8
}

module "postgres" {
  source  = "Azure/postgresql/azurerm"

  resource_group_name = var.context.azure.resourceGroup.name
  location            = var.location
  server_name    = "pg-${random_id.resource.hex}"
  administrator_login           = var.username
  administrator_password        = var.password
}
