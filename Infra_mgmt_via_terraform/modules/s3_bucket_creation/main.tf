resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = var.bucket_name
  region = var.region
  tags = {
    Name        = var.bucket_name
  }
}