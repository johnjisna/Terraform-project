variable "iam_user_name" {
  description = "IAM user name"
  type        = string
}

variable "iam_role_name" {
  description = "IAM role name"
  type        = string
}

variable "trusted_services" {
  description = "List of AWS services that can assume this role"
  type        = list(string)
  default     = []
}

variable "create_role" {
  description = "Flag to create IAM role (true for backend, false for frontend)"
  type        = bool
  default     = false
}

variable "iam_policies" {
  description = "Map of IAM policy names to file paths"
  type        = map(string)
}
