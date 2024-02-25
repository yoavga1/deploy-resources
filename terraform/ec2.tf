resource "aws_instance" "my_instance" {
  ami             = "ami-0c55b159cbfafe1f0" # Change this to your desired AMI ID
  instance_type   = "t2.micro"
  key_name        = "my-key-pair"         # Change this to your key pair name
  security_groups = ["my-security-group"] # Change this to your security group name

  tags = {
    Name                 = "Test EC2"
    git_commit           = "c01c1137deef0cf4d896aa737df43f4f4842fdb2"
    git_file             = "terraform/ec2.tf"
    git_last_modified_at = "2024-02-25 14:00:48"
    git_last_modified_by = "104417941+YGplgr@users.noreply.github.com"
    git_modifiers        = "104417941+YGplgr"
    git_org              = "support-enablement"
    git_repo             = "deploy-resources"
    yor_name             = "my_instance"
    yor_trace            = "1ad96e22-6ee6-420c-b87b-73f470b345df"
  }
}
