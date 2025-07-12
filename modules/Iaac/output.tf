output "vpc_id" {
   value=aws_vpc.terraform_vpc1_July_new.id
 }

  output "vpc_id2" {
   value=aws_vpc.tf_vpc2_July.id
 }

 output "access_key_id" {
  value = aws_iam_access_key.example_access_key.id
}

output "secret_access_key" {
  value     = aws_iam_access_key.example_access_key.secret
  sensitive = true
}