provider "aws" {
  region = "us-east-1" # Change this to your desired region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-test-bucket"
  acl    = "private"

  tags = {
    Name                 = "My S3 Bucket"
    git_commit           = "9984fa408d9305d7d579de623bdd6a43c854c355"
    git_file             = "terraform/main.tf"
    git_last_modified_at = "2024-02-22 10:33:19"
    git_last_modified_by = "104417941+YGplgr@users.noreply.github.com"
    git_modifiers        = "104417941+YGplgr"
    git_org              = "support-enablement"
    git_repo             = "deploy-resources"
    yor_name             = "my_bucket"
    yor_trace            = "54cb5c4f-e7ef-4557-9326-a796553bcb99"
  }
}

resource "aws_instance" "my_instance" {
  ami             = "ami-0c55b159cbfafe1f0" # Change this to your desired AMI ID
  instance_type   = "t2.micro"
  key_name        = "my-key-pair"         # Change this to your key pair name
  security_groups = ["my-security-group"] # Change this to your security group name

  tags = {
    Name                 = "Test EC2"
    git_commit           = "9984fa408d9305d7d579de623bdd6a43c854c355"
    git_file             = "terraform/main.tf"
    git_last_modified_at = "2024-02-22 10:33:19"
    git_last_modified_by = "104417941+YGplgr@users.noreply.github.com"
    git_modifiers        = "104417941+YGplgr"
    git_org              = "support-enablement"
    git_repo             = "deploy-resources"
    yor_name             = "my_instance"
    yor_trace            = "1ad96e22-6ee6-420c-b87b-73f470b345df"
  }
}
