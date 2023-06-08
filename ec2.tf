resource "aws_instance" "myec2"{
    ami = data.aws_ami.amazon-linux-2.id
    instance_type = var.instance_type
    availability_zone = "ap-south-1a"
    vpc_security_group_ids = [aws_security_group.my-ec2-sg.id]
    tags = {
        "Name" ="myec2"
    }
    key_name = "DevOps"
  
}