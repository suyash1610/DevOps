resource "aws_internet_gateway" "bank-IGW" {
  vpc_id = var.VPC_id

  tags = {
    Name = var.IGW_tag
  }
}
