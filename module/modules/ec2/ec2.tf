resource "aws_instance" "myec2" {
  ami           = "ami-07355fe79b493752d"
  instance_type = var.instance_type
}
