# variables.tf
variable "dev_access_key" {
  description = "AWS Access Key for dev account"
  type        = string
  sensitive   = true
}

variable "dev_secret_key" {
  description = "AWS Secret Key for dev account"
  type        = string
  sensitive   = true
}

variable "prod_access_key" {
  description = "AWS Access Key for prod account"
  type        = string
  sensitive   = true
}

variable "prod_secret_key" {
  description = "AWS Secret Key for prod account"
  type        = string
  sensitive   = true
}
