## Requirements

No requirements.

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_AppID"></a> [AppID](#input\_AppID) | Mandatory for creation of resources | `string` | `"003203"` | no |
| <a name="input_Environment"></a> [Environment](#input\_Environment) | Environment for which resource is getting deployed:Dev,QA,Prod | `string` | `"D"` | no |
| <a name="input_PointOfContact"></a> [PointOfContact](#input\_PointOfContact) | Point of Contact | `string` | `"WRE_Datawarehouse_Support@willistowerswatson.com"` | no |
| <a name="input_Segment"></a> [Segment](#input\_Segment) | Segment for identificaton | `string` | `"XXXX"` | no |
| <a name="input__DeployedUsing"></a> [\_DeployedUsing](#input\_\_DeployedUsing) | Deployed manually/Using Terraform | `string` | `"Terraform"` | no |
| <a name="input__Project"></a> [\_Project](#input\_\_Project) | Used To identify Project | `string` | `"XXXX"` | no |
| <a name="input__repo"></a> [\_repo](#input\_\_repo) | Azure Repositort | `string` | `"XXXX"` | no |
| <a name="input_appname"></a> [appname](#input\_appname) | App Name for the Resources | `string` | `"Test"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to be merged with the default tag map | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_tags"></a> [tags](#output\_tags) | Map of tags |
