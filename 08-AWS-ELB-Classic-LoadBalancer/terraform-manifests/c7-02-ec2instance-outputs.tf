# AWS E2 Instance Terraform Outputs
# Public EC2 Instance - Bastian Host

## ec2_bastian_public_instance_ids
output "ec2_bastian_public_instance_ids" {
  description = "List of IDs of instances"
  value       = module.ec2_public.id
}

## ec2_bastian_public_ip
output "ec2_bastian_public_ip" {
  description = "List of public IP names assigned to the instances"
  value       = module.ec2_public.public_ip
}

# Private EC2 Instances
## ec2_private_instance_ids
output "ec2_private_instance_ids" {
  description = "List of IDs of instances"
  value       = module.ec2_private.id
}

## ec2_private_ip
output "ec2_private_ip" {
  description = "List of private IP names assigned to the instances"
  value       = module.ec2_private.public_ip
}