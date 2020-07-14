provider "aws" {
    region = "us-east-2"
}

resource "aws_instance" "ec2" {
    ami = "ami-0693ba315aa63cf93"
    instance_type = "t2.micro"
    security_groups = [aws_security_group.web_traffic.name]
}


resource "aws_security_group" "web_traffic" {
    name = "Allow HTTPs"

    ingress {
        from_port = 443
        to_port = 443
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 443
        to_port = 443
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
}