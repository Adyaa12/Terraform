variable "region" {
    type = string
    description = "Region for my ec2 instance"
}
variable "vpc_id" {
    type = string
    description = "vpc for my ec2 instance"
}
variable "ami" {
    type = string
    description = "ami id for my ec2 instance"
}
variable "availability_zones" {
    type = list[string]
    description = "zone for my ec2 instance"
}
variable "vpc_cidr_block" {
    type = string
    description = "vpc id for my ec2 instance"
}
variable "subnet1_cidr" {
    type = string
    description = "subnet cidr for my ec2 instance"
}
variable "subnet2_cidr" {
    type = string
    description = "subnet cidr for my ec2 instance"
}
variable "instance_type" {
    type = string
    description = "type id for my ec2 instance"
}
