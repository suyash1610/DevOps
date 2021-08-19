resource "aws_security_group" "public-SG" {
  name        = var.public-SG_tag
  vpc_id      = var.VPC_id

  ingress {
      description      = "SSH from all traffic"
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
    }

  egress {
      description      = "All traffic"
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
    }

  tags = {
    Name = var.public-SG_tag
  }
}

resource "aws_security_group" "private-SG" {
  name        = var.private-SG_tag
  vpc_id      = var.VPC_id

  ingress {
      description      = "SSH from bastion host"
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = [var.public_cidr]
    }

  egress {
      description      = "All traffic"
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
    }

  tags = {
    Name = var.private-SG_tag
  }
}