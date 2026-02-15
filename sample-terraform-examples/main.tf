# Creating EC2 instance using module and passing variables through terraform.tfvars file

module "ec2_instance" {
  source            = "./modules/ec2_instance"
  instance_type     = var.instance_type
  ami_id            = var.ami_id
  region            = var.region
  instance_name_tag = var.instance_name_tag
}

# Let me raise pull request 5
