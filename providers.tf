provider "aws" {
    region = "us-east-1"
    assume_role {
      role_arn = "arn:aws:iam::253490770588:role/terraform_role"
    }
}
