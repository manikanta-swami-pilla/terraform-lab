# Variables for Main Terraform configuration

variable "bucket_name" {
  description = "Name of the S3 bucket to be created"
  type        = string
}

variable "key" {
  description = "Key for the S3 object in the bucket"
  type        = string
}

variable "environment" {
  description = "Environment for which the S3 bucket is being created (e.g., dev, staging, prod)"
  type        = string
}
variable "region" {
  description = "AWS region to create resources in"
  type        = string
  default     = "ap-south-2"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.small"
}

variable "ami_id" {
  description = "value for ami"
  type = string
}

variable "instance_name_tag" {
  description = "value for instance name tag"
  type        = string
}

