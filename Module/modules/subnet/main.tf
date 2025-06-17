resource "aws_subnet" "sn1" {
    vpc_id = var.vpc_id
    subnet_cidr = var.subnet_cidr_blocks
    availability_zone = var.az

    tags = {
        name = var.subnet_name
    }
}
