terraform {
  backend "s3" {
    bucket = "mklearning-s3-april"
    key = "statefile1/terraform.tfstate"
    region = "us-east-1"
  }
}