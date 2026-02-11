# Define output variable to expose public ip of the created EC2 instance
output "ec2_public_ip" {
  description = "Public IP address of the created EC2 instance"
  value       = aws_instance.managed_ec2.public_ip
}