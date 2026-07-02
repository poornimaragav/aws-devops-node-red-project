module "vpc" {
  source = "./modules/vpc"
}

module "security_group" {
  source = "./modules/security-group"

  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source = "./modules/ec2"

  ami_id            = var.ami_id
  instance_type     = var.instance_type
  subnet_id         = module.vpc.public_subnet_id
  security_group_id = module.security_group.sg_id
  key_name          = var.key_name
}

module "s3" {
  source = "./modules/s3"

  bucket_name = var.bucket_name
}
