# Required
variable "resource_group_name" {
  type        = string
  description = "Resource Group Name"
}
variable "location" {
  type        = string
  description = "Location"
}
variable "public_ip_name" {
  type        = string
  description = "Public ip name"
}

# Optional
variable "sku" {
  type        = string
  description = "public ip sku ex Basic, Standard"
  default     = "Standard"
}
variable "allocation_method" {
  type        = string
  description = "Allocation Method, ex Dynamic, Static"
  default     = "Dynamic"
}
variable "availability_zone" {
  type        = string
  description = "Availablilty zone, ex 1,2,3, No-Zone, Zone-Redundant"
  default     = "No-Zone"
}