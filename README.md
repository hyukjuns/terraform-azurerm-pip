# terraform-azurerm-network
# 환경준비
## OS
- MacOS or Linux or WSL2
## Registry
terraform cloud private repository
## Version & Provider
- Terraform( > 0.13.0)
- hashicorp/azurerm( > 2.60.0)
## 사용 예제
[usage-sample](./usage-sample)
```
provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "public_ip" {
  name     = "tf-rg"
  location = "koreacentral"
}
module "public_ip" {
  source =  "app.terraform.io/cloocus-mspdevops/pip/azurerm"
  version = "x.x.x"
  resource_group_name = azurerm_resource_group.public_ip.name
  location            = azurerm_resource_group.public_ip.location
  public_ip_name      = "tf-pubilc-ip-01"
  sku                 = "Standard"
  allocation_method   = "Static"
  availability_zone   = "No-Zone"
  depends_on          = [azurerm_resource_group.public_ip]
}
```
## Inputs
### Required
```
resource_group_name (string)
location (string)
public_ip_name (string)
```
### Optional
```
sku (string)
allocation_method (string)
availability_zone (string)
```
## Outputs
[details](./outputs.tf)
```
public_ip_id
public_ip_address
public_ip_fqdn
```