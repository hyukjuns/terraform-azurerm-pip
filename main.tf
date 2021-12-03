data "azurerm_resource_group" "pip" {
  name = var.resource_group_name
}
resource "azurerm_public_ip" "pip" {
  name                = var.public_ip_name
  resource_group_name = data.azurerm_resource_group.pip.name
  location            = coalesce(var.location, data.azurerm_resource_group.pip.location)
  sku                 = var.sku
  allocation_method   = var.allocation_method
  availability_zone   = var.availability_zone
}