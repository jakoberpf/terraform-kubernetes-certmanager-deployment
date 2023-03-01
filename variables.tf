# Global
variable "name" {
  type        = string
  description = "The name of the deployment."
  default     = "cert-manager"
}

variable "namespace" {
  type    = string
  default = "cert-manager"
}

variable "compartment" {
  type        = string
  description = "The compartment the ressource is deployed with."
}

# Helm
variable "helm_chart_version_manager" {
  type    = string
  default = "1.6.1"
}

variable "helm_chart_version_reflector" {
  type    = string
  default = "6.1.9"
}

variable "deploy_manager" {
  type    = bool
  default = true
}

variable "deploy_reflector" {
  type    = bool
  default = true
}

# Issuer - Cloudflare
variable "cloudflare_tokens" {
  type = map(object({
    name   = string
    host   = string
    domain = string
    token  = string
  }))
  description = "The API tokens for the cloudflare zones"
}
