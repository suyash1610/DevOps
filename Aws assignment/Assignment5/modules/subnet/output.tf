output "public-subnet-output" {
    value = aws_subnet.bank-public-subnet
    description = "Public Subnet details"
}

output "private-subnet-output" {
    value = aws_subnet.bank-private-subnet
    description = "Private Subnet details"
}