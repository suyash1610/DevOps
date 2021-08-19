module "vpc" {
  source   = ".//modules/vpc/"
  vpc_cidr = "10.0.0.0/16"
  vpc_tag  = "bank-vpc"
}

module "subnet" {
  source       = ".//modules/subnet/"
  VPC_id       = module.vpc.vpc-output.id
  public_cidr  = "10.0.0.0/24"
  public_tag   = "bank-public-subnet"
  private_cidr = "10.0.1.0/24"
  private_tag  = "bank-private-subnet"
  subnet_zone  = "ap-south-1a"
}

module "IGW" {
  source  = ".//modules/IGW/"
  VPC_id  = module.vpc.vpc-output.id
  IGW_tag = "bank-IGW"
}

module "RouteTable" {
  source         = ".//modules/RouteTable"
  VPC_id         = module.vpc.vpc-output.id
  IGW_id         = module.IGW.IGW-output.id
  public-RT_tag  = "public-RT"
  NGW_id         = module.NGW.NGW-output.id
  private-RT_tag = "private-RT"
}

module "NGW" {
  source    = ".//modules/NGW/"
  SUBNET_id = module.subnet.public-subnet-output.id
  NGW_tag   = "bank-NGW"
}

module "EC2" {
  source            = ".//modules/EC2/"
  ec2_ami           = "ami-0c1a7f89451184c8b"
  ec2_type          = "t2.micro"
  public-subnet_id  = module.subnet.public-subnet-output.id
  bastion_tag       = "bastion"
  public-SG         = module.SecurityGroup.public-SG-output.id
  private-subnet_id = module.subnet.private-subnet-output.id
  application_tag   = "application"
  private-SG        = module.SecurityGroup.private-SG-output.id
}


module "SecurityGroup" {
  source         = ".//modules/SecurityGroup/"
  VPC_id         = module.vpc.vpc-output.id
  public-SG_tag  = "public-SG"
  private-SG_tag = "private-SG"
  public_cidr    = "10.0.0.0/24"
}


