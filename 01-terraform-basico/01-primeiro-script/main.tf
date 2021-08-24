terraform {
	required_version = "1.0.5"
}

provider "aws" {
	region = "us-east-1"
}

resource "aws_s3_bucket" "my-tf-test-bucket" {
  bucket = "my-tf-test-bucket-louie-charlie-20210823"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    ManagedBy   ="Terraform"
  }
}