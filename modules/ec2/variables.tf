variable "instance_type" {
  description = "Instance type to use"
}

variable "ami" {
  description = "AMI ID for the instance"
}

variable "subnet_id" {
  description = "Subnet ID to launch the instance in"
}

variable "ec2_count" {
  description = "Number of EC2 instances to create"
}
