resource "aws_instance" "managed_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  region        = var.region

  #run command at boot
  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World!" > /tmp/hello_world.txt
              EOF

  tags = {
    Name = var.instance_name_tag
  }
}

# let me raise pull request 16