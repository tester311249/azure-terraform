.PHONY: all

all: init plan-with-no-colour

init:
	@echo "Removing cached terraform modules."
	@rm -Rf .terraform/modules
	@echo "Initialising terraform...."
	@terraform init -reconfigure -no-color -var-file="../../../env_configs/dev/env.tfvars"
	@echo "Validating terraform code..."
	@terraform validate -no-color

validate:
	@echo "Validating terraform code....."
	@terraform validate -no-color

plan: validate
	@echo "Running a terraform plan ...."
	@terraform plan -parallelism=30 -no-color -var-file="../../../env_configs/dev/env.tfvars" -refresh=false -input=false

plan-with-no-colour: validate
	@echo "Running a terraform plan .."
	@terraform plan -parallelism=30 -no-color -refresh=false
	@echo "Terraform plan generated..."

