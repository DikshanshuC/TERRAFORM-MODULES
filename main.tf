module "vpc" {
  source     = "./modules/vpc"
  vpc_cidr   = "10.0.0.0/16"
}

module "demo-web" {
  source      = "./modules/ec2"
  subnet_id   = module.vpc.public_subnet_id
  ami         = "ami-00bb6a80f01f03502" # Update with your AMI ID
  ec2_count   = 1
  instance_type = "t3.micro"
}
