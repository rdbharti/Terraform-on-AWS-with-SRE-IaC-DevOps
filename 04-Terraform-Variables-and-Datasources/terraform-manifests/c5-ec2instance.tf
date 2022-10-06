resource "aws_instance" "myec2vm" {
  ami           = data.aws_ami.amz_linux2.image_id
  instance_type = var.aws_instance_type
  user_data     = file("${path.cwd}/app1-install.sh")
  key_name      = var.instance_keypair
  vpc_security_group_ids = [
    aws_security_group.vpc-ssh.id,
    aws_security_group.vpc-web.id
  ]
  tags = {
    Name = "terraform-VM-EC2"
  }
}