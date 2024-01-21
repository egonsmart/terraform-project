module "production-instance" {
  source     = "../modules/vpc"
  app_region = "eu-west-1"
  ami = {
    "Dev"     = "ami-0694d931cee176e7d"
  }

}
provider "aws" {
  region = "eu-west-1"
}
#store the terraform state files in S3#
terraform {
    backend "s3" {
      bucket = ""
      key = "terraform-project"
      region = "eu-west-1"
      profile = "terraform-user"
    }
    
}