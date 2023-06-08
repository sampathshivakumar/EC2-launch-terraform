resource "aws_security_group" "my-ec2-sg" {
  name        = "my-ec2-sg"
  description = "security group for ec2-instance"

  ingress {
    description      = "all port 22"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
   
  }
   ingress {
    description      = "all port 80"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
   
  }


  egress {
    description      = "all port all ip and ports"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]

  }

  tags = {
    Name = "vpc-ssh"
  }
}