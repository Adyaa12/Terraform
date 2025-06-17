resource "aws_subnet" "subnet1" {
    vpc_id  = aws_vpc.main.id
    cidr_block = var.subnet1_cidr
    map_public_ip_on_launch = true
    availability_zones = var.availability_zones[0]
}

resource "aws_subnet" "subnet2" {
    vpc_id  = aws_vpc.main.id
    cidr_block = var.subnet2_cidr
    map_public_ip_on_launch = true
    availability_zones = var.availability_zones[1]
}
