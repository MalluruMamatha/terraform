resource "aws_security_group" "allow-ssh" {
  name        = var.sg_name
  description = "Allow all ports"
  

  dynamic "ingress" {
    for_each = var.inbound_rules
    content {

    from_port        = ingress.value["port"] # it means get the key value here i.e; port is the key and the #value is 80
    to_port          = ingress.value["port"]
    protocol         = ingress.value["protocol"]
    cidr_blocks      = ingress.value["allow_cidrs"]
    }
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
   
  }
}
