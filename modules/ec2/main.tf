resource "aws_instance" "main" {
  count         = var.ec2_count
  instance_type = var.instance_type
  ami           = var.ami
  subnet_id     = var.subnet_id

  tags = {
    "Name" = "demomodule"
  }
}
