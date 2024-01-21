module "production-instance" {
  source     = "../modules/EU-servers"
  app_region = "eu-central-1"
  ami = {

    "Prod"    = "ami-0694d931cee176e7d"
  }
}
provider "aws" {
  
}
#store the terraform state files in S3#
terraform {
    backend "s3" {
      bucket = ""
      key = "terraform-project"
      region = "eu-central-1"
      profile = "terraform-user"
    }
    
}