terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}
provider "aws" {
  region  = "ap-south-1"
  access_key = "AKIASDFMEMBBCRK7O67W "
  secret_key = "gq3mghYJ/iVGqdgGiP7cjPBxGl0QYqD5G9DVmFth "
}
resource "aws_instance" "example" {
  ami           = "ami-0763cf792771fe1bd"
  instance_type = "t2.micro"
  key_name = "krishnakeypair"
  security_groups = ["test-sg"]
  tags = {
    Name = "ExampleAppServerInstance"
  }
}
