resource "aws_instance" "managed_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  region        = var.region

  tags = {
    Name = var.instance_name_tag
  }

}