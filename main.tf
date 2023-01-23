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
  access_key = "AKIASDFMEMBBL4L3M5OK"
  secret_key = "BIBzB7/mBmHj7uNivYKUuX9D1CueJGXbKnbRBAgf "

}

resource "aws_instance" "example" {
  ami           = "ami-0763cf792771fe1bd"
  instance_type = "t2.micro"
  key_name = "krishnakeypair"
  security_groups = ["krishnasecuritygroup"]
  tags = {
    Name = "ExampleAppServerInstance"
  }
}
