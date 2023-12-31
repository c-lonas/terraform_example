# Provider Block
provider "aws" {
    profile = "default"
    region = "us-east-1"
}

# Resources Block
resource "aws_instance" "app_server" {
    ami = "ami-04b9e92b5572fa0d1"
    instance_type = var.ec2_instance_type

    tags = {
        Name = var.instance_name
    }
}