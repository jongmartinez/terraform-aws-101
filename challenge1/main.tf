provider "aws" {
    region = "us-east-2"
}

variable "vpc_bname" {
    type = string
    default = "TerraformVPC"
}

variable "complicated_tuple" {
    type = tuple([string, string])
    default = ["TerraformVPC0" , "TerraformVPC"]
}

resource "aws_vpc"  "TerraformVPC" {
    cidr_block = "192.168.0.0/24"
    tags = {
        Name = var.complicated_tuple[1]
    }
}

output "output1" {
    value = aws_vpc.TerraformVPC.id

}