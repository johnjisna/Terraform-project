variable "acm_certificate_arn" {
  description = "The ARN of the ACM certificate for the custom domain"
  type        = string
  default     = null
}

variable "custom_domain_name" {
  description = "The custom domain name for the CloudFront distribution"
  type        = string
  default     = ""
}

variable "policy_name" {
  description = "Name of the IAM policy"
  type        = string
  default     = "null"
}

variable "policy_type" {
  description = "access type wheather its a cloudfront or iam user"
  type        = string
  default     = "null"
}

variable "bucket_name" {
  description = "bucket name"
  type        = string
  default     = "null"
}

variable "instance_type" {
  description = "Instance type"
  type        = string
}

variable "key_name" {
  description = "SSH key name"
  type        = string
}

variable "instance_name" {
  description = "Name of the instance"
  type        = string
}

variable "secret_name" {
  description = "Name of the secret"
  type        = string
}

variable "secret_description" {
  description = "Description of the secret"
  type        = string
}

variable "secret_values" {
  description = "Key-value pairs to store in the secret"
  type        = map(string)
}

variable "region" {
  description = "AWS region"
  type        = string
}

variable "ecr_repository_name" {
  description = "The name of the ECR repository"
  type        = string
}

variable "ecr_scan_on_push" {
  description = "Indicates whether images are scanned after being pushed to the repository"
  type        = bool
  default     = true
}

variable "ecr_image_tag_mutability" {
  description = "The tag mutability setting for the repository (MUTABLE or IMMUTABLE)"
  type        = string
  default     = "MUTABLE"
}

variable "environment" {
  description = "The environment name (e.g., dev, prod)"
  type        = string
}

variable "project" {
  description = "The project name"
  type        = string
}

variable "iam_role_name" {
  description = "Name of the IAM user for S3"
  type        = string

}

variable "trusted_services" {
  description = "List of AWS services that can assume this IAM role"
  type        = list(string)
}

variable "create_role_backend" {
  description = "Set to true to create an IAM role and attach policies to it."
  type        = bool
  default     = true
}

variable "create_role_frontend" {
  description = "Set to true to create an IAM role and attach policies to it."
  type        = bool
  default     = false
}

variable "iam_user_name_backend" {
  description = "Name of the IAM user backend"
  type        = string

}

variable "iam_user_name_frontend" {
  description = "Name of the IAM user frontend"
  type        = string

}

variable "iam_role_name_backend" {
  description = "Name of the IAM user backend"
  type        = string

}

variable "iam_role_name_frontend" {
  description = "Name of the IAM user frontend"
  type        = string

}
