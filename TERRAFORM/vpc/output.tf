output "vpc_id" {
  value = resource.aws_vpc.main.id
}

output "subnet_id" {
  value = resource.aws_subnet.subnet_1.id
}