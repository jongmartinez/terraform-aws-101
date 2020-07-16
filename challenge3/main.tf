provider "aws" {
    region = "us-east-2"
}

module "web" {
    source = "./web"
    webname= "ec2_instance_name"
}

module "db" {
    source = "./db"
    dbname = "db_name"
}



output "Web_PublicIP"{
   value = module.web.pub_ip
}

output "DB_PrivateIP"{
   value = module.db.priv_ip
}