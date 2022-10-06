# Input Variables

# AWS Region

variable "aws_region" {
  description = "Region in which aws resource is to be created."
  type        = string
  default     = "us-east-1"
}

# AWS EC2 Instance TYPE

variable "aws_instance_type" {
  description = "EC2 Instance Type"
  type        = string
  default     = "t2.micro"
  sensitive   = false
}

#AWS EC2 Instance Key Pair

variable "instance_keypair" {
  description = "AWS EC2 key pair that need to be associated with ec2 instance"
  type        = string
  default     = "terraform-key"
}