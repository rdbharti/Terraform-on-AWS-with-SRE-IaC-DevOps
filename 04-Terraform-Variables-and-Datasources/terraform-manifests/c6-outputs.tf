# Terraform Output Values

# EC2 Instance Public IP

output "aws_instance_ip" {
  description = "EC2 Instance Public IP"
  value       = aws_instance.myec2vm.public_ip
}

# EC2 Instance Public DNS
output "aws_public_dns" {
  description = "EC2 Instance Public DNS"
  value       = aws_instance.myec2vm.public_dns
}