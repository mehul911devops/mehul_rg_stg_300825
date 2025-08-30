terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.40.0"
    }
  }


backend "azurerm" {
resource_group_name = azurerm_resource_group.example.name
storage_account_name = azurerm_storage_account.mehulstg.name
container_name = "tfstate"
key = "terraform.tfstate"
}


}

provider "azurerm" {
  features {}
  # Configuration options
  subscription_id = "81cc1915-8d88-419e-8fa3-0178811761bd"
}






