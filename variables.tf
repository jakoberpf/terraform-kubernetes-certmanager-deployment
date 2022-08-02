# Global
variable "compartment" {
  type        = string
  description = "The compartment the ressource is deployed with."
}

variable "namespace" {
  type    = string
  default = "cert-manager"
}

variable "deploy_manager" {
  type    = bool
  default = true
}

variable "deploy_reflector" {
  type    = bool
  default = true
}

variable "cloudflare_tokens" {
  type = map(object({
    name   = string
    host   = string
    domain = string
    token  = string
  }))
  description = "The API tokens for the cloudflare zones"
}
