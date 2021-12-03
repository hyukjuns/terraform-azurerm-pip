output "public_ip_id" {
  value       = azurerm_public_ip.pip.id
  description = "The Public IP ID."
}
output "public_ip_address" {
  value       = azurerm_public_ip.pip.ip_address
  description = "The IP address value that was allocated."
}
output "public_ip_fqdn" {
  value       = azurerm_public_ip.pip.fqdn
  description = "Fully qualified domain name of the A DNS record associated with the public IP. domain_name_label must be specified to get the fqdn. This is the concatenation of the domain_name_label and the regionalized DNS zone"
}