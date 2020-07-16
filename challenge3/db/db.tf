variable "dbname" {
    type = string
}

resource "aws_instance" "db" {
    ami = "ami-0693ba315aa63cf93"
    instance_type = "t2.micro"
    tags = {
        Name = var.dbname
    }
}

output "priv_ip" {
    value = aws_instance.db.private_ip
}