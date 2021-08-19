resource "aws_vpc" "bank-vpc" {
   cidr_block = var.vpc_cidr

   tags = {
      Name = var.vpc_tag
   }
}