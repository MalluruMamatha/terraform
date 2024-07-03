resource "aws_instance" "ec2" {
    for_each = var.instance_names
  ami           = data.aws_ami.ami_info.id
  instance_type = each.value
  vpc_security_group_ids = ["sg-02b9c227b04592725"]

  tags = merge (
    var.common_tags,
  {
    Name = each.key
    Module = each.key
  }
  )
}