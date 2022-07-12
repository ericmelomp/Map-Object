variable "ec2_configs" {
  type = map(object({
    instance_type = string
    ami           = string
    subnet_id     = string
    key_name      = string
    tags          = map(string)
  }))
  default = {
    "instance01" = {
      ami           = "ami-052efd3df9dad4825"
      instance_type = "t2.micro"
      key_name      = "key_ubuntu"
      subnet_id     = "subnet-00dae271d03a657e3"
      tags = {
        "Managed-by" = "Azure"
      }
    }
  }
}

