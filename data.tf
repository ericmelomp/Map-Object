data "aws_subnet_ids" "private_subnets" {
  vpc_id = "?"

  filter {
    name   = "tag:type"
    values = ["private"]
  }
}

output "subnet_ids" {
  value = data.aws_subnet_ids.private_subnets.ids
}