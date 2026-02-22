
# EC2 Instance Module

This module creates an AWS EC2 instance.

## Variables
- ami_id (required)
- instance_type (required)
- region (default: ap-south-2)
- instance_name_tag (default: ManagedEC2Server)
- user_data (optional)

## Output
- ec2_public_ip: Public IP address

## Example
```
module "ec2_instance" {
	source            = "./modules/ec2_instance"
	ami_id            = "ami-0abcdexxxxx"
	instance_type     = "t2.micro"
}
```
