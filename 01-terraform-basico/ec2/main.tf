terraform {
	required_version = "1.0.5"
}

provider "aws" {
	region = "us-east-1"
}

resource "aws_instance" "dev" {
    count = 3
    ami = "ami-026c8acd9271819gb"
    instance_type = "t2.micro"
    key_name = "terraform-aws"
    tags = {
        Name        = "dev-${count.index}"
        Environment = "Dev"
        ManagedBy   = "Terraform"
    }
  
}
