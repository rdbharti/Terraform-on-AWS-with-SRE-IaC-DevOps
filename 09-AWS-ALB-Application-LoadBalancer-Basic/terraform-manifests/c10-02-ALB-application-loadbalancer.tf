

module "alb" {
  source  = "terraform-aws-modules/alb/aws"
  version = "5.16.0"

  name               = "${local.name}-alb"
  load_balancer_type = "application"
  subnets            = module.vpc.public_subnets
  vpc_id             = module.vpc.vpc_id

  security_groups = [module.loadbalancer_sg.this_security_group_id]

  tags = local.common_tags # ALB - TAGS

  # Listeners
  http_tcp_listeners = [
    {
      port               = 80
      protocol           = "HTTP"
      target_group_index = 0
    }
  ]

  # Targets Groups
  target_groups = [

    # App1 Target Group - TG index = 0
    {
      name_prefix          = "app1-"
      backend_protocol     = "HTTP"
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
        protocol            = "HTTP"
        matcher             = "200-399"
      }
      protocol_version = "HTTP1"

      # App1 Target Group - Targets
      targets = {
        my_app1_bm1 = {
          target_id = module.ec2_private.id[0]
          port      = 80
        },
        my_ec2_again = {
          target_id = module.ec2_private.id[0]
          port      = 80
        }
      }
      tags = local.common_tags # Target Group related Tags
    }
  ]

}