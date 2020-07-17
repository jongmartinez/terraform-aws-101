provider "aws" {
    region = "eu-west-2"
}

resource "aws_instance" "db" {
    ami = "ami-0693ba315aa63cf93"
    instance_type = "t2.micro"
}

resource "aws_instance" "web" {
    ami = "ami-0693ba315aa63cf93"
    instance_type = "t2.micro"
    depends_on = [aws_instance.db]
}


#Query a AWS para traerse data interesante, el primer nombre es sobre el recurso, el segundo es de uso de terraform
data "aws_instance" "dbsearch" {
    filter{
        name = "tag:Name"
        values = ["DB Server"]
    }
}

output "dbservers" {
    value = data.aws_instance.dbsearch.availability_zone
}