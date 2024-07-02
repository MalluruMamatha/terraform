output "instance_info" {
    value = aws_instance.ec2
}

output "ami_id" {
    value = data.aws_ami.ami_info.id
  
}

