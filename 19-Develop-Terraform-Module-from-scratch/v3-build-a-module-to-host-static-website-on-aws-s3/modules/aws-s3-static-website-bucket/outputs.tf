output "bucket_arn" {
  description = "ARN of the S# Bucket"
  value       = aws_s3_bucket.s3_bucket.arn
}

output "bucket_domain_name" {
  description = "The bucket domain name. Will be of format bucketname.s3.amazonaws.com."
  value       = aws_s3_bucket.s3_bucket.bucket_domain_name
}

output "bucket_name" {
  description = "The name of the bucket."
  value       = aws_s3_bucket.s3_bucket.id
}

output "bucket_domain" {
  description = "The domain of the website endpoint, if the bucket is configured with a website. If not, this will be an empty string."
  value       = aws_s3_bucket.s3_bucket.website_domain
}

output "bucket_endpoint" {
  description = "The website endpoint, if the bucket is configured with a website. If not, this will be an empty string."
  value       = aws_s3_bucket.s3_bucket.website_endpoint
}
