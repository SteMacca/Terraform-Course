provider "aws" {
  region     = "eu-west-1"
  }

resource "aws_iam_user" "demouser" {
  name = "tfdemouser"
}

resource "aws_instance" "myec2" {
  ami           = "ami-07355fe79b493752d"
  instance_type = "t2.micro"
}
