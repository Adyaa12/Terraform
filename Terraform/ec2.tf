provider "aws" {
  region = var.region
}

resource "aws_instance" "my-instance" {
  ami = "ami-020cba7c55df1f615"
  instance_type = var.instance_type
  subnet_id = aws_subnet.subnet1.id

  tags =  {
    name = "instance1"
  }
}

resource "aws_instance" "my-instance2" {
  ami = "ami-020cba7c55df1f615"
  instance_type = var.instance_type
  subnet_id = aws_subnet.subnet1.id

  tags =  {
    name = "instance2"
  }
}
