
variable "cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_key_path" {
  description = "Path to the public key file for the key pair"
  type        = string
  default     = "C:/Users/pmani/.ssh/id_rsa.pub"
}

variable "private_key_path" {
  description = "Path to the private key file for SSH connection"
  type        = string
  default     = "C:/Users/pmani/.ssh/id_rsa"
}

variable "key_name" {
  description = "Name for the AWS key pair"
  type        = string
  default     = "terraform-demo-mani"
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.0.0.0/24"
}

variable "availability_zone" {
  description = "Availability zone for the subnet"
  type        = string
  default     = "ap-south-2a"
}

variable "ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-03748893c3fc9f55e"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.small"
}

variable "ssh_user" {
  description = "SSH username for the EC2 instance"
  type        = string
  default     = "ubuntu"
}

variable "app_source" {
  description = "Local path to the application file to copy to the instance"
  type        = string
  default     = "app.py"
}

variable "app_destination" {
  description = "Destination path on the EC2 instance for the application file"
  type        = string
  default     = "/home/ubuntu/app.py"
}
