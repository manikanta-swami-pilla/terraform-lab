variable "user_data" {
  description = "User data script to run at instance launch."
  type        = string
  default     = null
}
variable "ami_id" {
  description = "value for ami"
  type        = string
}

variable "instance_type" {
  description = "value for instance type"
  type        = string
}

variable "region" {
  description = "value for region"
  type        = string
  default     = "ap-south-2"
}

variable "instance_name_tag" {
  description = "value for instance name tag"
  type        = string
  default     = "ManagedEC2Server"
}