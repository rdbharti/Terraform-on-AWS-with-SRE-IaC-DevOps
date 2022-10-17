# Input Variables
variable "aws_region" {
  description = "Region in which AWS Resources are to be created"
  type        = string
  default     = "us-east-1"
}

## Create Variable for S3 Bucket Name
variable "my_s3_bucket" {
  description = "S3 Bucket name that we pass to S3 Custom Module"
  type        = string
  default     = "hucka-pani-8757766"
}
## Create Variable for S3 Bucket Tags
variable "my_s3_tags" {
  description = "Tags to set on the bucket"
  type        = map(string)
  default = {
    terraform   = "true"
    Environment = "dev"
    newtag1     = "tag1"
    newtag2     = "tag2"
  }
}