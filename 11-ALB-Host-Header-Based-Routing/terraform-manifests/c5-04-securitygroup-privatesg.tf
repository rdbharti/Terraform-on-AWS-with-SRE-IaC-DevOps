# AWS EC2 Security Group Terraform Module
# Security Group for Private EC2 Instances



module "private_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "3.18.0"

  name        = "private-sg" # required
  description = "Security Group With HTTPS & SSH port open for everybody, egressports are all world open"

  vpc_id = module.vpc.vpc_id # required

  # Ingress Rules and CIDR Blocks

  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]
  ingress_rules       = ["ssh-tcp", "http-80-tcp"]


  # Egress Rule - all-all open for

  egress_rules = ["all-all"]
  tags         = local.common_tags
}

