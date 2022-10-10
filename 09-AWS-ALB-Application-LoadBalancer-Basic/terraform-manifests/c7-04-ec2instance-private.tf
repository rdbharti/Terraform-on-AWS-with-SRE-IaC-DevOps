# AWS EC2 Instance Terraform Module

# Bastian Host - EC2 Instance that will be created in Private Subnet

module "ec2_private" {
  depends_on = [module.vpc]
  source     = "terraform-aws-modules/ec2-instance/aws"
  version    = "2.17.0"
  # insert the 10 required variables here


  name           = "${var.environment}-vm"
  instance_count = var.private_instance_count

  ami           = data.aws_ami.amzlinux2.id
  instance_type = var.instance_type
  key_name      = var.instance_keypair
  monitoring    = false
  # subnet_id              = module.vpc.public_subnets[0]
  subnet_ids             = module.vpc.private_subnets # its a list of subnets
  vpc_security_group_ids = [module.private_sg.this_security_group_id]

  user_data = file("${path.cwd}/app1-install.sh")


  tags = local.common_tags
}
