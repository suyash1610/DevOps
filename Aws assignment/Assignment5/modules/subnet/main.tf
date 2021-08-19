resource "aws_subnet" "bank-public-subnet" {
   vpc_id = var.VPC_id
   cidr_block = var.public_cidr
   availability_zone = var.subnet_zone
   map_public_ip_on_launch = true

   tags = {
     Name = var.public_tag
   }
}

resource "aws_subnet" "bank-private-subnet" {
   vpc_id = var.VPC_id
   cidr_block = var.private_cidr
   availability_zone = var.subnet_zone

   tags = {
     Name = var.private_tag
   }
}