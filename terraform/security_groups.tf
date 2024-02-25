resource "aws_security_group" "my_security_group" {
  name        = "my-security-group"
  description = "My secure security group for EC2 instance"

  vpc_id = "vpc-12345678" # change this to your VPC ID

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"] # Assuming your organization's CIDR range
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"] # Allowing HTTP traffic from anywhere might be needed for public websites
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    git_commit           = "27417d7fdfdc5dcc231a77fac92c361d27017e18"
    git_file             = "terraform/security_groups.tf"
    git_last_modified_at = "2024-02-22 10:36:33"
    git_last_modified_by = "104417941+YGplgr@users.noreply.github.com"
    git_modifiers        = "104417941+YGplgr"
    git_org              = "support-enablement"
    git_repo             = "deploy-resources"
    yor_name             = "my_security_group"
    yor_trace            = "93c344ec-7d45-4a9b-a860-cb59e5db2c16"
  }
}
