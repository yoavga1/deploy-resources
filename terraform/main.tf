provider "aws" {
  region = "us-east-1"  # Change this to your desired region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-test-bucket"  
  acl    = "private"
  
  tags = {
    Name = "My S3 Bucket"
  }
}

resource "aws_instance" "my_instance" {
  ami             = "ami-0c55b159cbfafe1f0"  # Change this to your desired AMI ID
  instance_type   = "t2.micro"               
  key_name        = "my-key-pair"            # Change this to your key pair name
  security_groups = ["my-security-group"]    # Change this to your security group name
  
  tags = {
    Name = "Test EC2"
  }
}

