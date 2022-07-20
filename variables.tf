variable "ec2_configs" {
  description = "Defining the types of arguments in the map of object"
  type = map(object({
    instance_type = string
    ami           = string
    subnet_id     = string
    key_name      = string
    tags          = map(string)
  }))
#You can create the tf.vars file instead of using "default" for the values
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

