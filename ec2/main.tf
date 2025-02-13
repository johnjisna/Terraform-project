resource "aws_instance" "web" {
  ami                   = var.ami
  instance_type         = var.instance_type
  key_name              = var.key_name

  tags = {
    Name        = var.instance_name
    Environment = var.environment
  }

  user_data = <<EOT
#!/bin/bash
# Redirect logs for debugging
exec > /var/log/user-data.log 2>&1

# Update and install Docker
sudo apt-get update -y
sudo apt-get install -y docker.io
sudo systemctl start docker
sudo systemctl enable docker

# Get AWS ECR login
aws ecr get-login-password --region ${var.region} | docker login --username AWS --password-stdin ${var.ecr_repository_url}

# Pull and run the Docker container
docker pull ${var.ecr_repository_url}:latest
docker run -d --name my-app -p 80:80 ${var.ecr_repository_url}:latest
EOT
}
