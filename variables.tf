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
variable "vpc_id" {
  description = "vpc-0502f2708ff475f0b"
}

variable "security_group_ids" {
  description = "List of security group IDs"
  type        = list(string)
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  default     = "MyInstance"
}
