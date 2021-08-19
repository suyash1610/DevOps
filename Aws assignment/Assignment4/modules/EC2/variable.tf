variable "ec2_ami" {
  type = string
  description = "EC2 ami"
}

variable "ec2_type" {
  type = string 
  description = "Instance type for ec2 machine"
}

variable "public-subnet_id" {
  type = string
  description = "Associated public subnet ID"
}

variable "bastion_tag" {
  type = string 
  description = "Instance tag for bastion host"
}

variable "public-SG" {
  type = string
  description = "Associated public Security Group"
}

variable "private-subnet_id" {
  type = string
  description = "Associated private subnet ID"
}

variable "application_tag" {
  type = string 
  description = "Instance tag for application server"
}

variable "private-SG" {
  type = string
  description = "Associated private Security Group"
}



