# SSH Traffic Security Group - SSH TRAFFIC

resource "aws_security_group" "vpc-ssh" {
  name        = "vpc-ssh"
  description = "DEV VPC SSH"

  ingress {
    description = "Allow Port 22"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["182.68.142.66/32"]
  }

  egress {
    description = "ALLOW all ip and ports outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "vpc-ssh"
  }
}

# SSH Traffic Security Group - WEB TRAFFIC

resource "aws_security_group" "vpc-web" {
  name        = "vpc-web"
  description = "DEV VPC WEB"

  ingress {
    description = "Allow Port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["182.68.142.66/32"]
  }

  ingress {
    description = "Allow Port 443"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["182.68.142.66/32"]
  }

  egress {
    description = "ALLOW all ip and ports outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "vpc-web"
  }
}