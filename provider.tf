terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.28.0"
    }
  }
}

provider "aws" {
  alias = "lagos"
  region = "eu-west-1"
}

provider "aws" {
  alias = "abuja"
  region = "eu-central-1"
}