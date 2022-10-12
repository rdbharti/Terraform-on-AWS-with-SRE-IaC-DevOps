# Security Group for public Load Balancer

module "loadbalancer_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "3.18.0"

  name        = "loadbalancer-sg" # required
  description = "Security Group With HTTP port open for everybody, egressports are all world open"

  vpc_id = module.vpc.vpc_id # required

  # Ingress Rules and CIDR Blocks

  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["http-80-tcp"]
  ingress_with_cidr_blocks = [
    {
      from_port   = 81
      to_port     = 81
      protocol    = 6
      description = "Allow Port 81 from Internet"
      cidr_blocks = "0.0.0.0/0"

  }]


  # Egress Rule - all-all open for

  egress_rules = ["all-all"]
  tags         = local.common_tags
}

