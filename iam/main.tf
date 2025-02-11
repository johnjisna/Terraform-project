resource "aws_iam_user" "user" {
  name = var.iam_user_name
}

resource "aws_iam_policy" "policies" {
  for_each    = var.iam_policies
  name        = each.key
  description = "IAM policy for ${each.key}"
  policy      = file(each.value)
}

resource "aws_iam_user_policy_attachment" "policy_attachments" {
  for_each   = aws_iam_policy.policies
  user       = aws_iam_user.user.name
  policy_arn = each.value.arn
}

resource "aws_iam_role" "role" {
  count = var.create_role ? 1 : 0
  name  = var.iam_role_name

  assume_role_policy = jsonencode({
    Version   = "2012-10-17",
    Statement = [
      {
        Effect    = "Allow",
        Action    = "sts:AssumeRole",
        Principal = {
          Service = var.trusted_services
        }
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "role_policy_attachments" {
  for_each   = var.create_role ? aws_iam_policy.policies : {}
  role       = var.create_role ? aws_iam_role.role[0].name : ""
  policy_arn = each.value.arn
}
