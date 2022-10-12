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
  for_each = toset (keys ({
        for az, details in data.aws_ec2_instance_type_offerings.my_instance_type : 
        az => details.instance_types if length(details.instance_types) != 0 
    }))
  
  # You can also use each.value because for list items each.key == each.value
  availability_zone = each.key
  
  tags = {
    Name = "terraform-VM-EC2-${each.key}"
  }
}