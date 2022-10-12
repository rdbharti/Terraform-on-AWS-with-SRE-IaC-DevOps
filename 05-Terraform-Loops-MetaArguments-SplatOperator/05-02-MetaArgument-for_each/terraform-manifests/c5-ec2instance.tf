# Availability Zones
data "aws_availability_zones" "az" {
  filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}


# EC2 Instance
resource "aws_instance" "myec2vm" {
  ami           = data.aws_ami.amz_linux2.image_id
  instance_type = var.aws_instance_type
  # instance_type = var.aws_instance_type_list[0]
  # instance_type = var.aws_instance_type_map["dev"] # For Map
  user_data = file("${path.cwd}/app1-install.sh")
  key_name  = var.instance_keypair
  vpc_security_group_ids = [
    aws_security_group.vpc-ssh.id,
    aws_security_group.vpc-web.id
  ]
  
  # Create EC2 Instance in all Availability Zones of VPC
  for_each = toset(data.aws_availability_zones.az.names)
  
  # You can also use each.value because for list items each.key == each.value
  availability_zone = each.key
  
  tags = {
    Name = "terraform-VM-EC2-${each.key}"
  }
}