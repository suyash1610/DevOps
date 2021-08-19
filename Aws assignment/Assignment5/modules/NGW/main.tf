resource "aws_eip" "bank-EIP" {
  vpc      = true
}

resource "aws_nat_gateway" "bank-NGW" {
  allocation_id = aws_eip.bank-EIP.id
  subnet_id     = var.SUBNET_id

  tags = {
    Name = var.NGW_tag
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  # depends_on = [aws_internet_gateway.bank-IGW]
}