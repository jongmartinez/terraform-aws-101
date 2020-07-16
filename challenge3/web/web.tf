variable "webname"{
    type = string
}

resource "aws_instance" "web" {
    ami = "ami-0693ba315aa63cf93"
    instance_type = "t2.micro"
    security_groups = [module.sg.sg_name]
    provisioner "remote-exec" {
        script = "server_script.sh"
    }
    user_data = file("./web/server_script.sh")
}

module "sg" {
    source = "../sg"
    ingress = [80,443]
    egress= [80,443,8080,3306]
}

module "eip" {
    source = "../eip"
    instance_id = aws_instance.web.id
}

output "pub_ip" {
    value = module.eip.eip_publicip
}