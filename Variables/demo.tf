resource "aws_security_group" "demo" {
  name = "variable_demo"

  ingress {
    from_port   = 443
    protocol    = "tcp"
    to_port     = 443
    cidr_blocks = [var.vpn_ip]
  }

  ingress {
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
    cidr_blocks = [var.vpn_ip]
  }

  ingress {
    from_port   = 53
    protocol    = "tcp"
    to_port     = 53
    cidr_blocks = [var.vpn_ip]
  }

}
