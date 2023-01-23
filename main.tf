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
}
ingress {
  from_port  =8080
  to_port    =8080
  protocol   ="tcp"
  cidr_blocks =["0.0.0.0/0"]
}
ingress {
  from_port  = 22
  to_port    =22
  protocol   ="tcp"
  cidr_blocks =["0.0.0.0/0"]
}

egress {
  from_port  = 0
  to_port    =22
  protocol   ="tcp"
  cidr_blocks =["0.0.0.0/0"]
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
