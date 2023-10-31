output "key-vault-id" {
  description = "Key Vault ID"
  value       = module.keyvault.key-vault-id
}

output "key-vault-url" {
  description = "Key Vault URI"
  value       = module.keyvault.key-vault-url
}

output "key-vault-name" {
  description = "Key Vault Name"
  value       = module.keyvault.key-vault-name
}

output "key-vault-secrets" {
  value     = module.keyvault.key-vault-secrets
  sensitive = true
}
