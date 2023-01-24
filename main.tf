resource "aws_instance" "example" {
  ami           = "ami-0763cf792771fe1bd"
  count=1
  instance_type = "t2.micro"
  key_name = "krishnakeypair"
  security_groups = ["krishnasecuritygroup"]
  tags = {
    Name = "Terraform ServerInstance"
  }
}
