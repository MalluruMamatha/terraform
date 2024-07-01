# ec2 instance related variables

variable "image_id" {
    default = "ami-041e2ea9402c46c32"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "instance_names" {
    default = ["db","backend","frontend"]
    type = list
  
}

variable "common_tags" {
    default = {
        Environment = "dev"
        Project = "Expense"
        Terraform = "true"
    }
  
}


# sg related variables

variable "sg_name" {
    default = "allow-everything"
    type = string
}

variable "port" {
    default = "22"
}

variable "protocol" {
    default = "tcp"
}

variable "cidr_blocks" {
    default = [ "0.0.0.0/0" ]
  type = list
}

# r53 record related variables

variable "zone_id" {
    default = "Z067602411QDJYQL1AKVB"
}

variable "domain_name" {
    default = "malluru.online"
  
}