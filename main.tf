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
  region  = "us-east-1"
  access_key = "AKIASDFMEMBBF52B43SI"
  secret_key = "SisOq/xGz9PF8ftZ4gyEuIKUXJ2k6jz4Ej6/AQkS "

}

resource "aws_instance" "example" {
  ami           = "ami-0763cf792771fe1bd"
  instance_type = "t2.micro"
  key_name = "krishnakeypair"
  security_groups = ["krishnasecuritygroup"]
  tags = {
    Name = "Terraform ServerInstance"
  }
}
