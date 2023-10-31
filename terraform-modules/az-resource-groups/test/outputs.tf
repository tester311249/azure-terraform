output "resource-group-name-test" {
  description = "Azure Resource Group Name"
  value       = module.az-rg-test.resource-group-name
}

output "resource-group-location-test" {
  description = "Azure Resource Group Location"
  value       = module.az-rg-test.resource-group-location
}
