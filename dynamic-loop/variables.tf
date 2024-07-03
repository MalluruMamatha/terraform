variable "inbound_rules" {
    type = list
    default = [
        {
    port = "22"
    protocol = "tcp"
    allow_cidrs = ["0.0.0.0/0"]
    },
    {
    port = "80"
    protocol = "tcp"
    allow_cidrs = ["0.0.0.0/0"]
    },
    {
    port = "8080"
    protocol = "tcp"
    allow_cidrs = ["0.0.0.0/0"]
    },
    {
    port = "3306"
    protocol = "tcp"
    allow_cidrs = ["0.0.0.0/0"]
    }
    ]

}


variable "sg_name" {
    default = "allow-everything"
    type = string
}