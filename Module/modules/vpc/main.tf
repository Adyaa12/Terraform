resource "aws_vpc" "vpc" {
    cidr_blocks = var.vpc_cidr

    tags= {
        name= var.vpc_name
    }
}
