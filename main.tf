provider "aws" {
  region = "us-east-1"
}

terraform {
  required_version = ">= 0.12"
  backend "s3" {
    bucket = "my-bucket-300823"
    key = "terraform.tfstate"
    region = "us-east-1"
  }
  
}

resource "aws_s3_bucket" "my-bucket" {
  bucket = "my-test-bucket-3000823"
}