output "instance_id" {
  description = "ID of the instance"
  value       = aws_instance.web.id
}

output "public_ip" {
  description = "Public IP address of the instance"
  value       = aws_instance.web.public_ip
}

output "latest_ubuntu_ami_id" {
  value = data.aws_ami.ubuntu.id
}
