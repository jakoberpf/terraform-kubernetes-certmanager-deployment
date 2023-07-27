<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | >= 2.4.1 |
| <a name="requirement_kubectl"></a> [kubectl](#requirement\_kubectl) | >= 1.10.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | >= 2.0.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | >= 2.4.1 |
| <a name="provider_kubectl"></a> [kubectl](#provider\_kubectl) | >= 1.10.0 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | >= 2.0.2 |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.cert_manager](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [helm_release.cert_reflector](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [kubectl_manifest.cert_manager](https://registry.terraform.io/providers/gavinbunney/kubectl/latest/docs/resources/manifest) | resource |
| [kubernetes_namespace.cert_manager](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace) | resource |
| [kubernetes_secret.cert_manager](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/secret) | resource |
| [random_string.deployment_id](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |
| [kubectl_path_documents.cert_manager](https://registry.terraform.io/providers/gavinbunney/kubectl/latest/docs/data-sources/path_documents) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloudflare_tokens"></a> [cloudflare\_tokens](#input\_cloudflare\_tokens) | The API tokens for the cloudflare zones | <pre>map(object({<br>    name   = string<br>    host   = string<br>    domain = string<br>    token  = string<br>  }))</pre> | n/a | yes |
| <a name="input_compartment"></a> [compartment](#input\_compartment) | The compartment the ressource is deployed with. | `string` | n/a | yes |
| <a name="input_deploy_manager"></a> [deploy\_manager](#input\_deploy\_manager) | n/a | `bool` | `true` | no |
| <a name="input_deploy_reflector"></a> [deploy\_reflector](#input\_deploy\_reflector) | n/a | `bool` | `true` | no |
| <a name="input_helm_chart_version_manager"></a> [helm\_chart\_version\_manager](#input\_helm\_chart\_version\_manager) | Helm | `string` | `"1.6.1"` | no |
| <a name="input_helm_chart_version_reflector"></a> [helm\_chart\_version\_reflector](#input\_helm\_chart\_version\_reflector) | n/a | `string` | `"6.1.9"` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the deployment. | `string` | `"cert-manager"` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | n/a | `string` | `"cert-manager"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->