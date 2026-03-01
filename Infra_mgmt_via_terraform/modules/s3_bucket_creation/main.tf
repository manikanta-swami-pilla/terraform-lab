terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0.0"
    }
  }
  required_version = ">= 1.0.0"
}

resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = var.bucket_name
  region = var.region
  tags = {
    Name        = var.bucket_name
  }
}