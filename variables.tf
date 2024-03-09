variable "aws_region" {
  description = "AWS region to deploy resources"
  default     = "ap-south-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "ami" {
  description = "AMI ID for the EC2 instance"
  default     = "ami-0ba259e664698cbfc"
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  default     = "MyInstance"
}
