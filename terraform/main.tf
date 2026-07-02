module "ec2" {

  source = "./modules/ec2"

  ami_id            = var.ami_id

  instance_type     = var.instance_type

  subnet_id         = "subnet-123456789"

  security_group_id = "sg-123456789"

  key_name          = var.key_name

}
