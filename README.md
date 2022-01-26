# terraform-aws-eks-minio-operator

[![Lint Status](https://github.com/DNXLabs/terraform-aws-eks-minio-operator/workflows/Lint/badge.svg)](https://github.com/DNXLabs/terraform-aws-eks-minio-operator/actions)
[![LICENSE](https://img.shields.io/github/license/DNXLabs/terraform-aws-eks-minio-operator)](https://github.com/DNXLabs/terraform-aws-eks-minio-operator/blob/master/LICENSE)


Terraform module for deploying Kubernetes [minio-operator](https://min.io/), a management console for an Istio-based service mesh. It provides dashboards, observability, and lets you operate your mesh with robust configuration and validation capabilities.

## Usage

```bash
module "minio_operator" {
  source = "git::https://github.com/DNXLabs/terraform-aws-eks-minio-operator.git"

  enabled = true
}
```

<!--- BEGIN_TF_DOCS --->

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13 |
| aws | >= 3.13, < 4.0 |
| helm | >= 1.0, < 3.0 |
| kubernetes | >= 1.10.0, < 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| helm | >= 1.0, < 3.0 |
| kubernetes | >= 1.10.0, < 3.0.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| create\_namespace | Whether to create Kubernetes namespace with name defined by `namespace`. | `bool` | `true` | no |
| enabled | Variable indicating whether deployment is enabled. | `bool` | `true` | no |
| helm\_chart\_name | MinIO operator Helm chart name to be installed | `string` | `"minio-operator"` | no |
| helm\_chart\_release\_name | Helm release name | `string` | `"minio-operator"` | no |
| helm\_chart\_repo | MinIO operator repository name. | `string` | `"https://operator.min.io/"` | no |
| helm\_chart\_version | MinIO operator Helm chart version. | `string` | `"4.4.3"` | no |
| mod\_dependency | Dependence variable binds all AWS resources allocated by this module, dependent modules reference this variable. | `any` | `null` | no |
| namespace | Kubernetes namespace to deploy MinIO operator Helm chart. | `string` | `"minio-operator"` | no |
| settings | Additional settings which will be passed to the Helm chart values. | `map` | `{}` | no |

## Outputs

No output.

<!--- END_TF_DOCS --->

## Authors

Module managed by [DNX Solutions](https://github.com/DNXLabs).

## License

Apache 2 Licensed. See [LICENSE](https://github.com/DNXLabs/terraform-aws-eks-minio-operator/blob/master/LICENSE) for full details.
