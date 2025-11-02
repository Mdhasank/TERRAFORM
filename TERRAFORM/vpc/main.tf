resource "aws_vpc" "main" {
  cidr_block       = var.cidr_block
  instance_tenancy = "default"

  tags = {
    Name = var.vpc_name
  }
}
resource "aws_subnet" "subnet_1" {
  vpc_id     = resource.aws_vpc.main.id
  cidr_block = var.subnet_cidr_block

  tags = {
    Name = var.subnet_name
  }
}
resource "aws_subnet" "subnet_2" {
  vpc_id     = resource.aws_vpc.main.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "test-subnet-2"
  }
}