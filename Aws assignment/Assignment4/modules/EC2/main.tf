resource "aws_instance" "bastion" {
  ami = var.ec2_ami
  subnet_id = var.public-subnet_id
  instance_type = var.ec2_type
  vpc_security_group_ids = [var.public-SG]        

  tags = {
    Name = var.bastion_tag
  }
}

resource "aws_instance" "application" {
  ami = var.ec2_ami
  subnet_id = var.private-subnet_id
  instance_type = var.ec2_type
  vpc_security_group_ids = [var.private-SG]        

  tags = {
    Name = var.application_tag
  }
}

