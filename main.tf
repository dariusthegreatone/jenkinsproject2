provider "aws" {
  region                   = "us-east-2"
}

module "my_vpc" {

source = "./module/vpc"

vpc_cidr = var.vpc_cidr

tenancy = var.tenancy 

subnet_cidr_public = var.subnet_cidr_public

subnet_cidr_private = var.subnet_cidr_private

}

module "my_ec2" {

source = "./module/ec2"

ec2_ami = var.ec2_ami

ec2_instance = var.ec2_instance

ec2_key = var.ec2_key

subnet_id_public = module.my_vpc.subnet_id_public

}
