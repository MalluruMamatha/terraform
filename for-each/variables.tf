
# variable "sg_id" {
#     default = "sg-02b9c227b04592725"
#     type = string
# }

variable "common_tags" {
    default = {
        Environment = "dev"
        Project = "Expense"
        Terraform = "true"
    }
  
}

variable "instance_names" {
    type = map
    default = {
        db = "t2.small"
        backend = "t2.micro"
        frontend = "t2.micro"
    }
  
}

variable "zone_id" {
    default = "Z067602411QDJYQL1AKVB"
}

variable "domain_name" {
    default = "malluru.online"
  
}