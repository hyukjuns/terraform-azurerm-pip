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
allocation_method (string)
```
## Outputs
[details](./outputs.tf)
```

```
# terraform-azurerm-pip
for azure pip module
### Public ip
- public ip
    - Required Values
        ```
        resource_group_name
        location
        pip_name
        pip_allocation_method
        ```
    - Optional Values
        ```
        pip_allocation_method
        ```
    - outputs
        ```
        public_ip_address_id
        ```