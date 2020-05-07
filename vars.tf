variable "region" {
  default = "ap-southeast-1"
}

variable "vpc_cidr" {
  default = "190.160.0.0/16"
}

variable "subnet_cidr" {
  type    = "list"
  default = ["190.160.1.0/24", "190.160.2.0/24", "190.160.3.0/24"]
}

variable "ec2_ami" {
  type = "map"
  default = {
    ap-south-1     = "ami-0b44050b2d893d5f7"
    ap-southeast-1 = "ami-0f7719e8b7ba25c61"
  }
}

// default = "ami-0b44050b2d893d5f7"
// }

variable "ec2_instance_type" {
  default = "t2.micro"
}

// variable "az-mumbai" {
// type = "list"
// default = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
// }

// data "aws_availability_zones" "az-mumbai" {}
data "aws_availability_zones" "az-sg" {}
