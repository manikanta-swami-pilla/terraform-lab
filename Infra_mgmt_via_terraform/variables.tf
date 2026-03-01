# Variables for Main Terraform configuration

variable "region" {
  description = "AWS region to create resources in"
  type        = string
  default     = "ap-south-2"
  validation {
    condition     = contains(["ap-south-2", "us-west-2", "eu-west-1"], var.region)
    error_message = "Region must be one of: ap-south-2, us-west-2, eu-west-1."
  }
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

variable "vpc_id" {
  description = "VPC ID where the EC2 instance will be launched"
  type        = string
}
