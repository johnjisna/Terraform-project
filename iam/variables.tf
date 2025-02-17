variable "iam_user_name" {
  description = "The name of the IAM user"
  type        = string
}

variable "iam_role_name" {
  description = "The name of the IAM role"
  type        = string
}

variable "trusted_services" {
  description = "List of services trusted to assume the IAM role"
  type        = list(string)
}

variable "create_role" {
  description = "Flag to determine if IAM role should be created"
  type        = bool
}

variable "iam_policies" {
  description = "Map of policy names to policy file paths"
  type        = map(string)
}

variable "resource_arn_mapping" {
  description = "Mapping of policy names to the corresponding resource ARNs"
  type        = map(string)
}

variable "user_policy_mapping" {
  description = "Mapping of policies to attach to the IAM user"
  type        = map(string)
}

variable "role_policy_mapping" {
  description = "Mapping of policies to attach to the IAM role"
  type        = map(string)
}
