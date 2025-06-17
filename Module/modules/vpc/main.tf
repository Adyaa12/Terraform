resource "aws_vpc" "vpc" {
    cidr_blocks = var.cidr_blocks

    tags= {
        name= var.vpc_name
    }
}
