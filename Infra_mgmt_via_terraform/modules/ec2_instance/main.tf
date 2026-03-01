# IAM Role for EC2 to allow SSM access
resource "aws_iam_role" "ssm_role" {
  name               = "${var.instance_name_tag}-ssm-role"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow"
    }
  ]
}
EOF
}

# Attach AmazonSSMManagedInstanceCore policy
resource "aws_iam_role_policy_attachment" "ssm_role_attach" {
  role       = aws_iam_role.ssm_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

# Instance profile for EC2
resource "aws_iam_instance_profile" "ssm_instance_profile" {
  name = "${var.instance_name_tag}-ssm-profile"
  role = aws_iam_role.ssm_role.name
}

# Security group (no SSH needed, just SSM)
resource "aws_security_group" "ssm_sg" {
  name        = "${var.instance_name_tag}-sg"
  description = "Security group for SSM-managed EC2"
  vpc_id      = var.vpc_id

  # Outbound access only (SSM agent communicates with AWS endpoints)
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# EC2 instance
resource "aws_instance" "managed_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  user_data     = var.user_data

  iam_instance_profile   = aws_iam_instance_profile.ssm_instance_profile.name
  vpc_security_group_ids = [aws_security_group.ssm_sg.id]

  tags = {
    Name = var.instance_name_tag
  }
}