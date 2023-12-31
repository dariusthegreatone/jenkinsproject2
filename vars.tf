#ec2 variable

variable "ec2_ami" {}

variable "ec2_instance" {}

variable "ec2_key" {}


#vpc variable

variable "vpc_cidr" {

type = string 

description = "vpc cidr in our module"

}

variable "tenancy" {

type = string

description = "tenancy for vpc"

}

variable "subnet_cidr_public" {

type = string

description = "public subnet for our vpc"

}

variable "subnet_cidr_private" {

type = string

description = "private subnet for our vpc" 

}
