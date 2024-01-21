module "lagos" {
    source = "./modules/vpc_module"
    provider = {
        aws = aws.lagos
    }
    vpc_cidr = "10.1.0.0/16"
}
module "abuju" {
    source = "./modules/vpc_module"
    provider = {
        aws = aws.abuju
    }
    vpc_cidr = "10.1.0.0/16"
}