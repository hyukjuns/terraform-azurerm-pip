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
variable "allocation_method" {
  type        = string
  description = "Allocation Method"
  default     = "Dynamic"
}