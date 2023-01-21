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
  access_key = "AKIASDFMEMBBPMOGKNHL"

  secret_key = "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"
}

resource "aws_instance" "terraform_instance" {
  ami = "ami-0763cf792771fe1bd"
  instance_type = "t2.micro"
  key_name = "krishnakeypair"
  security_groups = ["krishnasecuritygroup"]
  tags = {
     Name = "terraform_instance"
  }
}
