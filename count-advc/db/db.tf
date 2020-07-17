variable "dbnames" {
    type = list(string)
}

resource "aws_instance" "db" {
    ami = "ami-0693ba315aa63cf93"
    instance_type = "t2.micro"
    count = length(var.dbnames)
    tags = {
        Name = var.dbnames[count.index]
    }
}

output "priv_ip" {
    value = [aws_instance.db.*.private_ip]
}