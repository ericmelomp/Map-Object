data "aws_subnet_ids" "private_subnets" {
  vpc_id = "?"
#This filter goes according to the tags (key=type; value=private) in the subnets of my vpc.
  filter {
    name   = "tag:type"
    values = ["private"]
  }
}

#Getting the subnets id according to the vpc and filter below.
output "subnet_ids" {
  value = data.aws_subnet_ids.private_subnets.ids
}