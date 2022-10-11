# AWS EC2 Security Group Terraform Module
# Security Group for Public Bastian Host



module "public_bastion_sg" {
  source = "terraform-aws-modules/security-group/aws"
  # version = "3.18.0"
  version = "4.0.0"

  name        = "public-bastion-sg" # required
  description = "Security Group With SSH port open for everybody, egressports are all world open"

  vpc_id = module.vpc.vpc_id # required

  # Ingress Rules and CIDR Blocks

  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["ssh-tcp"]


  # Egress Rule - all-all open for

  egress_rules = ["all-all"]
  tags         = local.common_tags
}

