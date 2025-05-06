variable "resource_group_name" {
  type = string
  default = "jenkins-tf-rg"
}

variable "location" {
  type    = string
  default = "Canada Central"
}
variable "keyvault_name" {
  type = string
  default = "jenkins-tf-keyvault"
}
variable "key_vault_rg" {
    type = string
    default = "jenkins-tf-rg"
}
variable "admin_username" {
  type = string
  sensitive = false
  default = "adminuser"
}


variable "admin_password" {
  type      = string
  sensitive = false
  default = "Password@123"
}

variable "subscription_id" {
  type = string
}

variable "client_id" {
  type = string
}

variable "client_secret" {
  type      = string
  sensitive = true
}

variable "tenant_id" {
  type = string
}
