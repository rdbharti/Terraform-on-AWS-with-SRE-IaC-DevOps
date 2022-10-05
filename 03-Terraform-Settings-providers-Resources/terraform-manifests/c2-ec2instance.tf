resource "aws_instance" "myec2vm" {
  ami           = "ami-026b57f3c383c2eec"
  instance_type = "t2.micro"
  user_data     = file("${path.cwd}/app1-install.sh")


  tags = {
    Name = "terraform-VM-EC2"
  }
}