# creating instance

resource "aws_instance" "ec2" {
    count = length(var.instance_names)
  ami           = var.image_id
  instance_type = var.instance_names[count.index] == "db" ? "t2.small" : "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]

  tags = merge (
    var.common_tags,
  
  {
    Name = var.instance_names[count.index]
    # Module = var.instance_names[count.index]
  }
  )
}

# creating security group

resource "aws_security_group" "allow-ssh" {
  name        = var.sg_name
  description = "Allow SSH port"
  

  tags = merge(
    var.common_tags,

   {
    Name = var.sg_name
    
   }
  )

  ingress {
    from_port        = var.port
    to_port          = var.port
    protocol         = var.protocol
    cidr_blocks      = var.cidr_blocks
   
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.cidr_blocks
   
  }
}
