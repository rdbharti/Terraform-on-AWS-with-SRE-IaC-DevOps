# output "bucket_arn" {
#   description = "ARN of the S3 Bucket"
#   value       = module.website_s3_bucket.arn
# }

# output "bucket_domain_name" {
#   description = "The bucket domain name. Will be of format bucketname.s3.amazonaws.com."
#   value       = module.website_s3_bucket.bucket_domain_name
# }

output "bucket_name" {
  description = "The name of the bucket."
  value       = module.website_s3_bucket.bucket_name
}

# output "bucket_domain" {
#   description = "The domain of the website endpoint, if the bucket is configured with a website. If not, this will be an empty string."
#   value       = module.website_s3_bucket.website_domain
# }

# output "bucket_endpoint" {
#   description = "The website endpoint, if the bucket is configured with a website. If not, this will be an empty string."
#   value       = module.website_s3_bucket.website_endpoint
# }

/*

╷
│ Error: Unsupported attribute
│ 
│   on c4-outputs.tf line 18, in output "bucket_domain":
│   18:   value       = module.website_s3_bucket.website_domain
│     ├────────────────
│     │ module.website_s3_bucket is a object
│ 
│ This object does not have an attribute named "website_domain".
╵
╷
│ Error: Unsupported attribute
│ 
│   on c4-outputs.tf line 23, in output "bucket_endpoint":
│   23:   value       = module.website_s3_bucket.website_endpoint
│     ├────────────────
│     │ module.website_s3_bucket is a object
│ 
│ This object does not have an attribute named "website_endpoint".
╵

*/


