# Creating EC2 instance using module and passing variables through terraform.tfvars file
terraform {
  required_version = "~>1.11"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.3"
    }
  }
}

module "ec2_instance" {
  source            = "./modules/ec2_instance"
  instance_type     = "t3.small"
  ami_id            = "ami-02774d409be696d81"
  region            = "ap-south-2"
}

# Let me raise pull request 12
