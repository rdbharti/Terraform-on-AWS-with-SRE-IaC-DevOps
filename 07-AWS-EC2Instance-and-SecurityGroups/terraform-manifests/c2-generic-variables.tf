# Input Variables

# AWS Region

variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type        = string
  default     = "us-east-1"
}

# Environment Variables

variable "environment" {
  description = "Environment Variable Used as Prefix"
  type        = string
  default     = "dev"
}

# Business Division

variable "business_division" {
  description = "Business Division in the large organization this Infrastructure belongs"
  type        = string
  default     = "SAP"
}