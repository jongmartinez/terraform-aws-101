provider "aws" {
    region = "us-east-2"
}

module "db" {
    source = "./db"
    dbnames = ["mysql" , "mariadb" , "mssql"]
}

output "privs_ips" {
    value = module.db.priv_ip
}