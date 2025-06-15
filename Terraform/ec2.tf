terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0-beta3"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "my-instance" {
  ami = "ami-020cba7c55df1f615"
  instance_type = var.instance_type
  vpc_security_group_id  = aws_vpc.main.id
  subnet_id = aws_subnet.subnet1.id

  tags =  {
    name = "instance1"
  }
}

resource "aws_instance" "my-instance2" {
  ami = "ami-020cba7c55df1f615"
  instance_type = var.instance_type
  vpc_security_group_id  = aws_vpc.main.id
  subnet_id = aws_subnet.subnet1.id

  tags =  {
    name = "instance2"
  }
}


