variable "enabled" {
  type        = bool
  default     = true
  description = "Variable indicating whether deployment is enabled."
}

variable "helm_chart_name" {
  type        = string
  default     = "minio-operator"
  description = "MinIO operator Helm chart name to be installed"
}

variable "helm_chart_release_name" {
  type        = string
  default     = "operator"
  description = "Helm release name"
}

variable "helm_chart_version" {
  type        = string
  default     = "4.4.4"
  description = "MinIO operator Helm chart version."
}

variable "helm_chart_repo" {
  type        = string
  default     = "https://operator.min.io/"
  description = "MinIO operator repository name."
}

variable "create_namespace" {
  type        = bool
  default     = true
  description = "Whether to create Kubernetes namespace with name defined by `namespace`."
}

variable "namespace" {
  type        = string
  default     = "minio-operator"
  description = "Kubernetes namespace to deploy MinIO operator Helm chart."
}

variable "mod_dependency" {
  default     = null
  description = "Dependence variable binds all AWS resources allocated by this module, dependent modules reference this variable."
}

variable "settings" {
  default     = {}
  description = "Additional settings which will be passed to the Helm chart values."
}