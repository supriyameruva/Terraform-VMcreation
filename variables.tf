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
}
variable "key_vault_rg" {
    type = string

}
variable "admin_username" {
  type = string
  sensitive = true
}


variable "admin_password" {
  type      = string
  sensitive = true
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
