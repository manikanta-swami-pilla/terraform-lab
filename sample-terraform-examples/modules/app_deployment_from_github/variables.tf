
variable "cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_key_path" {
  description = "Path to the public key file for the key pair"
  type        = string
}

variable "private_key_path" {
  description = "Path to the private key file for SSH connection"
  type        = string
}

variable "key_name" {
  description = "Name for the AWS key pair"
  type        = string
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.0.0.0/24"
}

variable "availability_zone" {
  description = "Availability zone for the subnet"
  type        = string
}

variable "ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "ssh_user" {
  description = "SSH username for the EC2 instance"
  type        = string
}

variable "app_source" {
  description = "Local path to the application file to copy to the instance"
  type        = string
}

variable "app_destination" {
  description = "Destination path on the EC2 instance for the application file"
  type        = string
}
