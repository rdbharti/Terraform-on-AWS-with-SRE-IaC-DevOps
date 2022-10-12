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

# AWS EC2 Instance TYPE List

variable "aws_instance_type_list" {
  description = "EC2 Instance Type List"
  type        = list(string)
  default     = ["t2.micro", "t2.small"]
}

variable "aws_instance_type_map" {
  description = "EC2 Instance Type Map"
  type        = map(any)
  default = {
    "dev"  = "t2.micro"
    "qa"   = "t2.small"
    "prod" = "t3.micro"
  }
}


# AWS EC2 Instance TYPE Map