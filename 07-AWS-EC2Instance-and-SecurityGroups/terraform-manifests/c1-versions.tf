terraform {
  required_version = "~> 1.3.0"
  required_providers {

    null = {
      source  = "hashicorp/null"
      version = "~> 3.0.0"
    }

    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}


provider "aws" {
  profile = "default" # optional, if 'default' is used
  region  = var.aws_region
}