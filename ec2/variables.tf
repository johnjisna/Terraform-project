variable "ami" {
  description = "Amazon Machine Image (AMI) ID"
  type        = string
}

variable "instance_type" {
  description = "Instance type"
  type        = string
}

variable "key_name" {
  description = "Key pair name for SSH access"
  type        = string
}

variable "instance_name" {
  description = "Name of the instance"
  type        = string
}

variable "secret_id" {
  description = "ID of the secret to fetch"
  type        = string
}

variable "region" {
  description = "AWS region"
  type        = string
}
variable "ecr_repository_url" {
  description = "The URL of the ECR repository"
  type        = string
}
variable "environment" {
  description = "Environment name (e.g., dev, staging, prod)"
  type        = string
}


