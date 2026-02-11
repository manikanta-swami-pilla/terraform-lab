# Creating EC2 instance using module and passing variables through terraform.tfvars file

module "ec2_instance" {
  source            = "./modules/ec2_instance"
  instance_type     = ""
  ami_id            = ""
  region            = ""
  instance_name_tag = ""
}