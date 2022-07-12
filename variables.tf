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
      ami           = "?"
      instance_type = "?"
      key_name      = "?"
      subnet_id     = "?"
      tags = {
        "Managed-by" = "Terraform"
      }
    }
  }
}

