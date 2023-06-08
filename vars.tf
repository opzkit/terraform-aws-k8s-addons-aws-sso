variable "admin_role_regex" {
  type        = string
  default     = "AWSReservedSSO_AWSAdministratorAccess_.*"
  description = "Regular expression used to match the admin IAM role, if multiple roles match the first one will be selectef"
}

variable "view_role_regex" {
  type        = string
  default     = "AWSReservedSSO_AWSReadOnlyAccess_.*"
  description = "Regular expression used to match the read only IAM role, if multiple roles match the first one will be selectef"
}
