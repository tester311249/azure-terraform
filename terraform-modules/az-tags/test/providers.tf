terraform {
  required_version = ">= 1.1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.35.0"
    }
  }
  # Refer the following terraform documentation for partial configuration of backend
  #  https://developer.hashicorp.com/terraform/language/settings/backends/configuration#partial-configuration

  #   backend "azurerm" {
  # 		# Partial configuration

  #   }
}

# Block to specify provider
# ARM_SUBSCRIPTION_ID, ARM_AZURE_CLIENT_ID,ARM_AZURE_CLIENT_SECRET would require to be set first to use in povider

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}
