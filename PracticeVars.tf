provider "aws"{
    region = "ap-south-1"
    access_key = var.access_key
    secret_key = var.secret_key
}



 resource "aws_instance" "Arjuns" {
    ami = "ami-05a5bb48beb785bf1"
    instance_type = var.cputype
    key_name = "red hat"
     tags = {
      Name = "Terraform"
   }
   availability_zone = "ap-south-1b"
}

resource "aws_instance" "Manis" {
    ami = "ami-05a5bb48beb785bf1"
    instance_type = var.cputype
    key_name = "red hat"
    tags = {
        Name = "Arjun"
    }
  
}
