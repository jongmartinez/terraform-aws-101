terraform {
    backend "s3"{
        key = "terraform/tfstate.tfstate" #folder path donde se va a storear el .tfstate
        bucket = "name"
        region = "us-east-2"
        #access_key
        #access_secret+
        #cat ~/.aws/credentials
    }

}