# Get DNS information from AWS R53
data "aws_route53_zone" "mydomain" {
  name         = "ranadurlabh.in"
  private_zone = false
}

# Output MyDomain Zone ID
output "mydomain_zoneid" {
  description = "Hosted Zone id of the desired Hosted Zone."
  value       = data.aws_route53_zone.mydomain.zone_id
}


# Output MyDomain Name
output "mydomain_name" {
  description = "Hosted Zone id of the desired Hosted Zone."
  value       = data.aws_route53_zone.mydomain.name
}
