terraform {
  backend "s3" {
    bucket         = "tf-state-bucket-2026-02-12" # change this
    key            = "terraform.tfstate"
    region         = "ap-south-2"
    encrypt        = true
    use_lockfile  = true
  }
}