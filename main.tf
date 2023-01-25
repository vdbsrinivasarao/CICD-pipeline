resource "aws_instance" "example" {
  ami           = "ami-0763cf792771fe1bd"
  count=1
  instance_type = "t2.micro"
  key_name = "brahmajikeypair"
  security_groups = ["brahmajisg"]
  tags = {
    Name = "Terraform ServerInstance"
  }
}
