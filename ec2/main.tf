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
# Install Docker
sudo apt-get update
sudo apt-get install -y docker.io

# Login to ECR
$(aws ecr get-login-password --region ${var.region} | docker login --username AWS --password-stdin ${var.ecr_repository_url})

# Pull and run the Docker container
docker pull ${var.ecr_repository_url}:latest
docker run -d --name my-app -p 80:80 ${var.ecr_repository_url}:latest
EOT
}