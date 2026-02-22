# Defining variables for S3 bucket creation module

variable "bucket_name" {
  description = "The name of the S3 bucket to create"
  type        = string
}

variable "region" {
    description = "The AWS region where the S3 bucket will be created"
    type        = string
    default     = "ap-south-2"
  
}