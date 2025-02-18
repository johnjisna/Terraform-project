ami_id          = "ami-03e31863b8e1f70a5"
EC2_AMI_FILTER  = "ubuntu/images/hvm-ssd/ubuntu-jammy-24.04-amd64-server-*"
instance_type = "t2.micro"
key_name      = "my-key"
instance_name = "my-ec2-instance"
region        = "us-east-1"

secret_name        = "my-secret-two"
secret_description = "Database credentials for updated application"
secret_values = {
  username = "newadmin"
  password = "NewSuperSecret456"
}

ecr_repository_name      = "my-new-app-repo"
ecr_scan_on_push         = true
ecr_image_tag_mutability = "IMMUTABLE"
environment              = "dev"
project                  = "my-new-app"

iam_user_name_backend  = "new-backend-user"
iam_user_name_frontend = "new-frontend-user"
iam_role_name_backend  = "new-backend-role"
iam_role_name_frontend = "new-frontend-role"
iam_role_name          = "new-ecr-read-role"
trusted_services       = ["ec2.amazonaws.com"]

acm_certificate_arn = ""
custom_domain_name  = ""
policy_name         = "new-s3-iam-user-policy-456"
policy_type         = "private_iam"
bucket_name         = "my-tf-new-bucket456"
