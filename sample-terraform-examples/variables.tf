# Defining variable at root level to pass values to module

variable "instance_type" {
  description = "value for instance type"
  type        = string
  default     = "t3.small"
}

variable "region" {
  description = "value for region"
  type        = string
}

variable "ami_id" {
  description = "value for ami"
  type        = string
}

variable "instance_name_tag" {
  description = "value for instance name tag"
  type        = string
}   