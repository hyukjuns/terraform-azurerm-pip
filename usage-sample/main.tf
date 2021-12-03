provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "public_ip" {
  name     = "tf-rg"
  location = "koreacentral"
}

module "public_ip" {
  source              = "../"
  resource_group_name = azurerm_resource_group.public_ip.name
  location            = azurerm_resource_group.public_ip.location
  public_ip_name      = "tf-pubilc-ip-01"
  sku                 = "Standard"
  allocation_method   = "Static"
  availability_zone   = "No-Zone"
  depends_on          = [azurerm_resource_group.public_ip]
}