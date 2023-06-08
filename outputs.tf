output "instance_public_ip" {
  description = "ec2-instance public ip"
  value = aws_instance.myec2.public_ip
}