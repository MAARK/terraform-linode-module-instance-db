# terraform-<provider>-<module name>

This repo will be used as a template for new Terraform module Github repos.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.0 |
| <a name="requirement_linode"></a> [linode](#requirement\_linode) | >= 1.28 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_linode"></a> [linode](#provider\_linode) | 1.28.1 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.3.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [linode_instance.this](https://registry.terraform.io/providers/linode/linode/latest/docs/resources/instance) | resource |
| [linode_stackscript.this](https://registry.terraform.io/providers/linode/linode/latest/docs/resources/stackscript) | resource |
| [random_string.db_passord](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |
| [random_string.inst_root_passord](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |
| [linode_instances.this](https://registry.terraform.io/providers/linode/linode/latest/docs/data-sources/instances) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_authorized_keys"></a> [authorized\_keys](#input\_authorized\_keys) | n/a | `list(any)` | `[]` | no |
| <a name="input_group"></a> [group](#input\_group) | n/a | `string` | `""` | no |
| <a name="input_image"></a> [image](#input\_image) | Instance Settings | `string` | `""` | no |
| <a name="input_instance_private_ip"></a> [instance\_private\_ip](#input\_instance\_private\_ip) | n/a | `bool` | `true` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | n/a | `string` | `"g6-standard-1"` | no |
| <a name="input_label"></a> [label](#input\_label) | The base name for the stack | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | (Required) This is the location where the Linode is deployed. Examples are ＂us-east＂, ＂us-west＂, ＂ap-south＂, etc. See all regions here. Changing region forces the creation of a new Linode Instance | `string` | `"us-east"` | no |
| <a name="input_stackscript_data"></a> [stackscript\_data](#input\_stackscript\_data) | Map of required StackScript UDF data. | `map(any)` | `{}` | no |
| <a name="input_stackscript_extend"></a> [stackscript\_extend](#input\_stackscript\_extend) | appeded to the base stack script that provides mysql access. | `string` | `""` | no |
| <a name="input_swap_space"></a> [swap\_space](#input\_swap\_space) | n/a | `number` | `256` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `list(any)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance_details"></a> [instance\_details](#output\_instance\_details) | detailed instance info |
| <a name="output_instance_id"></a> [instance\_id](#output\_instance\_id) | linode instance ID |
<!-- END_TF_DOCS -->
