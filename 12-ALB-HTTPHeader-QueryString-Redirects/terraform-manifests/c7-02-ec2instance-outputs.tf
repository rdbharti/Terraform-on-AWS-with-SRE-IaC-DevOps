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
## ec2_private__app1_instance_ids
output "ec2_private_instance_app1_ids" {
  description = "List of IDs of instances"
  value       = module.ec2_private_app1.id
}

## ec2_private_ip
output "ec2_private_app1_ip" {
  description = "List of private IP names assigned to the instances"
  value       = module.ec2_private_app1.public_ip
}



## ec2_private__app2_instance_ids
output "ec2_private_instance_app2_ids" {
  description = "List of IDs of instances"
  value       = module.ec2_private_app2.id
}

## ec2_private_ip
output "ec2_private_app2_ip" {
  description = "List of private IP names assigned to the instances"
  value       = module.ec2_private_app2.public_ip
}