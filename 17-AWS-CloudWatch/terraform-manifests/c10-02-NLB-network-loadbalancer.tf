# Terraform AWS Network Load Balancer (NLB)

##################################################################
# Network Load Balancer with Elastic IPs attached
##################################################################
module "nlb" {
  source  = "terraform-aws-modules/alb/aws"
  version = "8.1.0"


  name_prefix = "mynlb-"
  # name = "complete-nlb-${random_pet.this.id}"

  load_balancer_type = "network"

  vpc_id = module.vpc.vpc_id

  #   Use `subnets` if you don't want to attach EIPs
  subnets = module.vpc.public_subnets

  #   Use `subnet_mapping` to attach EIPs
  # subnet_mapping = [for i, eip in aws_eip.this : { allocation_id : eip.id, subnet_id : tolist(data.aws_subnets.all.ids)[i] }]

  #   # See notes in README (ref: https://github.com/terraform-providers/terraform-provider-aws/issues/7987)
  #   access_logs = {
  #     bucket = module.log_bucket.s3_bucket_id
  #   }


  #  TCP Listeners
  http_tcp_listeners = [
    {
      port               = 80
      protocol           = "TCP"
      target_group_index = 0
    },
  ]

  #  TLS
  https_listeners = [
    {
      port               = 443
      protocol           = "TLS"
      certificate_arn    = module.acm.acm_certificate_arn
      target_group_index = 0
    },
  ]

  #Target Groups
  target_groups = [
    {
      name_prefix          = "app1-"
      backend_protocol     = "TCP"
      backend_port         = 80
      target_type          = "instance"
      deregistration_delay = 10
      health_check = {
        enabled             = true
        interval            = 30
        path                = "/app1/index.html"
        port                = "traffic-port"
        healthy_threshold   = 3
        unhealthy_threshold = 3
        timeout             = 6
      }
    },

  ]

  tags = local.common_tags
}