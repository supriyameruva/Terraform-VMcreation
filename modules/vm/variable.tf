variable "resource_group_name" {
  type = string
  default = "jenkins-tf-rg"
}

variable "location" {
  type = string
  default = "Canada Central"
}

variable "admin_username" {
  type = string
}

variable "admin_password" {
  type      = string
  sensitive = true
}
