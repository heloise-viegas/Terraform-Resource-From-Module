provider "aws" {
  region = "us-east-2"
  profile = "Certification"
}

module "vpc_from_module" {
  source     = "git::https://github.com/CCapsule-IT/terraform-modules.git//vpc?ref=feat/test"  ##//path?ref=branch
  cidr_block = "10.0.0.0/16"
  vpc_name   = "test_vpc-terraform"
}