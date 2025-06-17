provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "instance" {
    ami_id = var.ami_id
    instance_type = var.instance_type

    user_data = <<-EOF
    #!/bin/bash
    sudo apt install nginx -y
    sudo systemctl start nginx
    sudo systemctl enable nginx 
    EOF

    tags= {
        name= var.instance_name
    }
}

resource "aws_security_group" "sg" {
    name = "sg"
    description = "sgforec2"
    vpc_id = var.vpc_id

    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    
} 
