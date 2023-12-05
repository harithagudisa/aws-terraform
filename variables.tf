variable "ami_id" {
    type = string
    default = "ami-03265a0778a880afb"
}

variable "instance_names" {
    type = list
    default = ["MongoDB", "Cart", "Catalogue", "Mysql", "Shipping", "User", "Redis", "RabbitMQ", "Payment", "Web"]
}