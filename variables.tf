variable "aws_region" {
    description = "region in which resources to be created"
    type = string
    default = "ap-south-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type = string
  default = "t2.micro"
}