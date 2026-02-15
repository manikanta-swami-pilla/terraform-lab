# Creating EC2 instance using module and passing variables through terraform.tfvars file
provider "aws" {
  region = "ap-south-2"
}

module "ec2_instance" {
  source            = "./modules/ec2_instance"
  instance_type     = "t3.small"
  ami_id            = ""
  region            = "ap-south-2"
}

# Let me raise pull request 15