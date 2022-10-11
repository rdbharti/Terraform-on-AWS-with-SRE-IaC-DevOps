# AWS EC2 Instance Type 

variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
  default     = "t2.micro"
}

variable "instance_keypair" {
  description = "EC2 Instance Keypair"
  type        = string
  default     = "terraform-key"
}

variable "private_instance_count" {
  description = "Private Instance Count"
  type        = number
  default     = 2
}