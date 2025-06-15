resource "aws_subnet" "subnet1" {
    vpc_id = var.vpc_id
    cidr_block = var.subnet1_cidr
    map_public_ip_on_launch = true
    availability_zone = var.availability_zones[0]
    
    tags= {
        name = sb1
    }
}

resource "aws_subnet" "subnet2" {
    vpc_id = var.vpc_id
    cidr_block = var.subnet2_cidr
    map_public_ip_on_launch = true
    availability_zone = var.availability_zones[1]

    tags= {
        name = sb2
    }
}