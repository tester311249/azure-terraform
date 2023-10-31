#!/bin/bash

KEY_VAULT=$1
PATH_TO_ENV_VARS=$2
export TF_VAR_object_id=''


# Function to fetch secrets from Azure Key Vault
function fetch_secret_from_keyvault() {
   local SECRET_NAME=$1

    az keyvault secret show --vault-name "${KEY_VAULT}" --name "${SECRET_NAME}" --query "value"
}
# Function to provide secrets as environment variable during runtime
function store_secret_from_keyvault() {
    local SECRET_VAR=$1
    local SECRET_NAME=$2
    SECRET_VALUE=`fetch_secret_from_keyvault "${SECRET_NAME}"`
    store_secret "${SECRET_VAR}" "${SECRET_VALUE}" "${SECRET_NAME}"
}

function store_secret() {
    local SECRET_VAR=$1
    local SECRET_VALUE=$2
	local SECRET_NAME=$3
    
    # Accounts for instances where the secret was not found or is empty
    # This prevents against malformed env.tfvars files being created
    if [ -z "$SECRET_VALUE" ]; then SECRET_VALUE='""';fi

	if [[ "$SECRET_NAME" =~ ^(subscription-id|client-id|client-secret|tenant-id)$ ]]; then
	y=$(echo ${SECRET_VAR} | tr '[:lower:]' '[:upper:]')
    export "ARM_${y}"=${SECRET_VALUE}
	echo "export ARM_${y}=${SECRET_VALUE}"
	else
    export "TF_VAR_${SECRET_VAR}"=${SECRET_VALUE}
	fi
	echo "${SECRET_VAR}=${SECRET_VALUE}" >> $PATH_TO_ENV_VARS
}

echo "# ----------------------- "
echo "# Fetched the following secrets from ${KEY_VAULT} on "`date`

# Function Invocation

store_secret_from_keyvault "administrator_login_password" "administrator-login-password"
store_secret_from_keyvault "subscription_id" "subscription-id"
store_secret_from_keyvault "azure_client_id" "client-id"
store_secret_from_keyvault "azure_client_secret" "client-secret"
store_secret_from_keyvault "object_id" "object-id"
store_secret_from_keyvault "storage_access_keys" "storage-access-keys"
store_secret_from_keyvault "tenant_id" "tenant-id"
store_secret_from_keyvault "vm_password" "vm-password"
store_secret_from_keyvault "hub_subscription_id" "hub-subscription-id"
echo "# End of fetched secrets. "
echo "# ----------------------- "


