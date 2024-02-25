provider "aws" {
  region = "us-east-1" # Change this to your desired region
}

data "aws_caller_identity" "current" {}


locals {
  account_id = data.aws_caller_identity.current.account_id
}


output "account_id" {
  value = local.account_id
}


resource "random_id" "rando" {
  byte_length = 8
}


resource "aws_s3_bucket" "my-bucket" {
  bucket = "${local.account_id}-my-s3-bucket-test-${random_id.rando.hex}"

  tags = {
    Name                 = "My S3 Bucket"
    git_commit           = "743b56f3d65619f5dc2d6dec96220cd88ce59b69"
    git_file             = "terraform/main.tf"
    git_last_modified_at = "2024-02-25 14:07:40"
    git_last_modified_by = "104417941+YGplgr@users.noreply.github.com"
    git_modifiers        = "104417941+YGplgr"
    git_org              = "support-enablement"
    git_repo             = "deploy-resources"
    yor_name             = "my-bucket"
    yor_trace            = "54cb5c4f-e7ef-4557-9326-a796553bcb99"
  }
}
