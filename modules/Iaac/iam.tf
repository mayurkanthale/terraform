provider "aws" {
  region = "us-east-1"
}

# Create IAM User
resource "aws_iam_user" "example_user" {
  name = "Terraform_user"
  path = "/"
}

resource "aws_iam_access_key" "example_access_key" {
  user = aws_iam_user.example_user.name
}

resource "aws_iam_user_policy_attachment" "example_attach" {
  user       = aws_iam_user.example_user.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
}
