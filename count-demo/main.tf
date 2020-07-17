provider "aws" {
    region = "us-east-2"
}

resource "aws_instance" "ec2" {
    ami = "ami-0693ba315aa63cf93"
    instance_type = "t2.micro"
    count = 3
}