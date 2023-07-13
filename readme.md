<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~> 3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_public_ip.pip](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) | resource |
| [azurerm_resource_group.pip](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allocation_method"></a> [allocation\_method](#input\_allocation\_method) | Allocation Method, ex Dynamic, Static | `string` | `"Dynamic"` | no |
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | Availablilty zone, ex 1,2,3, No-Zone, Zone-Redundant | `string` | `"No-Zone"` | no |
| <a name="input_location"></a> [location](#input\_location) | Location | `string` | n/a | yes |
| <a name="input_public_ip_name"></a> [public\_ip\_name](#input\_public\_ip\_name) | Public ip name | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Resource Group Name | `string` | n/a | yes |
| <a name="input_sku"></a> [sku](#input\_sku) | public ip sku ex Basic, Standard | `string` | `"Standard"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_public_ip_address"></a> [public\_ip\_address](#output\_public\_ip\_address) | The IP address value that was allocated. |
| <a name="output_public_ip_fqdn"></a> [public\_ip\_fqdn](#output\_public\_ip\_fqdn) | Fully qualified domain name of the A DNS record associated with the public IP. domain\_name\_label must be specified to get the fqdn. This is the concatenation of the domain\_name\_label and the regionalized DNS zone |
| <a name="output_public_ip_id"></a> [public\_ip\_id](#output\_public\_ip\_id) | The Public IP ID. |
<!-- END_TF_DOCS -->