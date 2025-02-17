output "iam_user_name" {
  description = "IAM user name"
  value       = aws_iam_user.user.name
}

output "iam_role_name" {
  description = "IAM role name (if created)"
  value       = var.create_role ? aws_iam_role.role[0].name : null
}

output "iam_policies" {
  description = "IAM policies created"
  value       = keys(aws_iam_policy.policies)
}

output "iam_user_arn" {
  description = "IAM User ARN"
  value       = aws_iam_user.user.arn
}
