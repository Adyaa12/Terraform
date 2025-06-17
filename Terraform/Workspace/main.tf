provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "main" {
    ami = var.ami_id
    instance_type = local.instance_type

    tags = {
        name = "ec2 $(terraform.workspace)"
        Environment = terraform.workspace
    }
}

locals {
    instance_type_map = {
        dev = "t2.micro"
        stage = "t3.micro"
        prod = "t2.small"
    }

    instance_type = lookup (local.instance_type_map, terrafrom.workspace, "t2.micro")
}
