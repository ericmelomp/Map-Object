resource "aws_instance" "Gustavo_Moriel" {
  for_each = var.ec2_configs

  instance_type = each.value["instance_type"]
  ami           = each.value["ami"]
  subnet_id     = each.value["subnet_id"]
  key_name      = each.value["key_name"]
  tags          = each.value["tags"]
}