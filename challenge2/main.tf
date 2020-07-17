provider "aws" {
    region = "us-east-2"
}

variable "ingressrules" {
    type = list(number)
    default = [80, 443]
}

variable "egressrules" {
    type = list(number)
    default = [80, 443]
}

resource "aws_instance" "ec2" {
    ami = "ami-0693ba315aa63cf93"
    instance_type = "t2.micro"
    security_groups = [aws_security_group.web_traffic.name]
    provisioner "remote-exec" {
        script = "server_script.sh"
    }
    user_data = file("server_script.sh")
}

resource "aws_db_instance" "rds_challenge" {
    allocated_storage = 20
    engine = "mysql"
    instance_class = "db.t2.micro"
    name = "rds_challenge_terraform"
    username = "rds_terra"
    password = "rds_terra"
    skip_final_snapshot = true
}

output "rds_output_id" {
    value = aws_db_instance.rds_challenge.id
}
output "rds_output_endpoint" {
    value = aws_db_instance.rds_challenge.endpoint
}

output "PrivateIp"{
    value = aws_instance.ec2.private_ip
}

output "PublicIP"{
    value = aws_instance.ec2.public_ip
}

resource "aws_security_group" "web_traffic" {
    name = "Allow HTTPs"

    dynamic "ingress" {
        iterator = port
        for_each = var.ingressrules
        content {
            from_port = port.value
            to_port = port.value
            protocol = "TCP"
            cidr_blocks = ["0.0.0.0/0"]
        }
    }

    dynamic "egress" {
        iterator = port
        for_each = var.egressrules
        content {
            from_port = port.value
            to_port = port.value
            protocol = "TCP"
            cidr_blocks = ["0.0.0.0/0"]
        }
    }

}

