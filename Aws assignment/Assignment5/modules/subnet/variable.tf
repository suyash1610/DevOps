
variable "VPC_id" {
  type = string 
}

variable "public_tag" {
  type = string 
  description = "Enter public subnet tag"
}

variable "public_cidr" {
  type = string
  description = "Enter public subnet CIDR"
}

variable "private_tag" {
  type = string 
  description = "Enter private subnet tag"
}

variable "private_cidr" {
  type = string
  description = "Enter private subnet CIDR"
}

variable "subnet_zone" {
  type = string
  description = "Enter subnet availability zone ( default : ap-south-1a)"
}