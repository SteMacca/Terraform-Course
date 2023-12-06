provider "aws" {
  region     = "eu-west-1"
}

resource "aws_instance" "myec2" {
  ami           = "ami-07355fe79b493752d"
  instance_type = lookup(var.instance_type, terraform.workspace)
}


variable "instance_type" {
  type = map

  default = {

    default = "t2.nano"
    dev     = "t2.micro"
    prd     = "t2.large"
  }
}