variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "bucket_name" {
  description = "Name of the S3 Bucket. Must be unique across AWS"
  type        = string
}

variable "tags" {
  description = "Tags to set on the bucket"
  type        = map(string)
  default     = {}
}