variable "instance_id"{
    type = string
}

resource "aws_eip" "elascticeip" {
    instance = var.instance_id
}

output "eip_publicip" {
    value = aws_eip.elascticeip.public_ip

}