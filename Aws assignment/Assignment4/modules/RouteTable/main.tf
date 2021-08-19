resource "aws_route_table" "public-RT" {
  vpc_id = var.VPC_id

  route  {
      cidr_block = "0.0.0.0/0"
      gateway_id = var.IGW_id
    }
  

  tags = {
    Name = var.public-RT_tag
  }
}

resource "aws_route_table" "private-RT" {
  vpc_id = var.VPC_id

  route  {
      cidr_block = "0.0.0.0/0"
      nat_gateway_id = var.NGW_id
    }
  

  tags = {
    Name = var.private-RT_tag
  }
}