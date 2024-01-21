module "abuja" {
  source     = "../modules/vpc_module"
  app_region = "eu-central-1"
  ami = {
    "Dev"     = "ami-0694d931cee176e7d"
  }
  provider = {
        aws = aws.abuja
  }

  vpc_cidr = var.prodcidr 
region = var.region
project_name = var.project_name
public_subnet_az1_cidr = var.public_subnet_az1_cidr
public_subnet_az2_cidr = var.public_subnet_az2_cidr
private_app_subnet_az1_cidr = var.private_app_subnet_az1_cidr
private_app_subnet_az2_cidr = var.private_app_subnet_az2_cidr
private_data_subnet_az1_cidr = var.private_data_subnet_az1_cidr
private_data_subnet_az2_cidr = var.private_data_subnet_az2_cidr

    }
    