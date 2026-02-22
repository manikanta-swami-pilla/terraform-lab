# In this Terraform configuration, we are defining two modules: one for creating an S3 bucket and another for launching an EC2 instance. The variables for these modules are defined in a separate `terraform.tfvars` file, which allows us to easily manage and change the configuration without modifying the main code.

module "s3_bucket_creation" {
  source      = "./modules/s3_bucket_creation"
  bucket_name = "${var.environment}-s3-bucket-created-by-terraform-22-02-2026"
}

module "ec2_instance" {
  source            = "./modules/ec2_instance"
  instance_type     = var.instance_type
  ami_id            = var.ami_id
  region            = var.region
  instance_name_tag = var.instance_name_tag
}


# Let me raise pull request 21