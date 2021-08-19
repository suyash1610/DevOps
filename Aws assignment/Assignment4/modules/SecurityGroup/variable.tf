variable "VPC_id" {
  type = string
}

variable "public-SG_tag" {
  type = string 
  description = "Bank public instance SG tag"
}

variable "private-SG_tag" {
  type = string 
  description = "Bank private instance SG tag"
}

variable "public_cidr" {
  type = string
  description = "public subnet CIDR"
}