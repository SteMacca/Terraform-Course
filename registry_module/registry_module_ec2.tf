provider "aws" {
  region     = "eu-west-1"
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"

  instance_type          = "t2.micro"
  subnet_id              = "subnet-136c4275"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}