module "vpc1" {
  source = "./modules/Iaac"

  vpc_cider          = "10.0.0.0/16"
  createdBy          = "MK"
  projectTag         = "MK Learning"
  public_ciderblock  = "10.0.0.0/24"
  private_ciderblock = "10.0.1.0/24"
  private_az         = "us-east-1a"
  public_az          = "us-east-1b"
}