# Variables for Main Terraform configuration

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
  type        = string
}

variable "instance_name_tag" {
  description = "value for instance name tag"
  type        = string
}

