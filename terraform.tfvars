ami             = "ami-03e31863b8e1f70a5"
instance_type   = "t2.micro"
key_name        = "my-key"
instance_name   = "my-ec2-instance"
region          = "us-east-1"

secret_name     = "my-new-secret-v6"
secret_description = "Database credentials for my application"
secret_values = {
  username = "admin"
  password = "SuperSecret123"
}

ecr_repository_name     = "my-app-repo"
ecr_scan_on_push        = true
ecr_image_tag_mutability = "MUTABLE"
environment             = "dev"
project                 = "my-app"
iam_user_name = "iam-user-123"
iam_role_name = "ecr-read-role"
trusted_services = ["ec2.amazonaws.com"]


