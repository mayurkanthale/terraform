resource "aws_vpc" "terraform_vpc1_July_new" {
  cidr_block = var.vpc_cider
  tags = {
    "Name"="${var.projectTag}-terraform_vpc1_July"
    "Created By" =var.createdBy
    "Project" =var.projectTag
  }
}

resource "aws_subnet" "public" {
  vpc_id = aws_vpc.terraform_vpc1_July_new.id
  cidr_block = var.public_ciderblock
  availability_zone = var.public_az
  tags={
    Name="${var.projectTag}-public-subnet-terraform"
  }
}

resource "aws_subnet" "private" {
  vpc_id = aws_vpc.terraform_vpc1_July_new.id
  cidr_block = var.private_ciderblock
  availability_zone = var.private_az

  tags={
    Name="${var.projectTag}-private-subnet-terraform"
  }
}
resource "aws_vpc" "tf_vpc2_July" {
  cidr_block = "10.0.0.0/24"
  tags = {
    "Name"="tf_vpc2_July"
    "Created By" ="MayurK Test"
    "Project" ="Lear_Terrafrm"
  }
}
 resource "aws_internet_gateway" "this" {
  vpc_id = aws_vpc.terraform_vpc1_July_new.id
 }

 resource "aws_route_table" "public_routeTable" {
  vpc_id = aws_vpc.terraform_vpc1_July_new.id
  route{
  cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.this.id
  }
 }

 resource "aws_route_table_association" "public" {
   subnet_id = aws_subnet.public.id
   route_table_id = aws_route_table.public_routeTable.id
 }

 resource "aws_route_table_association" "private" {
   subnet_id = aws_subnet.private.id
   route_table_id = aws_route_table.public_routeTable.id
 }