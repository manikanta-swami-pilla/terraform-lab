plugin "aws" {
  enabled = true
}

rule "aws_instance_invalid_type" {
  enabled = true
}

rule "aws_s3_bucket_invalid_name" {
  enabled = true
}

# Enable all default rules
rule "terraform_unused_declarations" {
  enabled = true
}
