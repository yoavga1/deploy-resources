resource "aws_security_group" "my_security_group" {
  name        = "my-security-group"
  description = "My secure security group for EC2 instance"

  vpc_id = "vpc-12345678"  # change this to your VPC ID

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]  # Assuming your organization's CIDR range
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]    # Allowing HTTP traffic from anywhere might be needed for public websites
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
