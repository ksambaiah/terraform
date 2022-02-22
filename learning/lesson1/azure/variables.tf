variable "location" {
  type        = string
  default     = "southindia"
  description = "default resources location"
}

variable "resource_group_name" {
  type           = string
  default        = "samkilar1"
  description = "resource group name"
}

variable "storage_account_name" {
  type    = string
  default = "samkilar1"
  description = "storage account name"
}
