resource "aws_instance" "example" {
  ami           = "ami-0763cf792771fe1bd"
  instance_type = "t2.micro"
  key_name = "krishnakeypair"
  security_groups = ["test-sg"]
  tags = {
    Name = "ExampleAppServerInstance"
  }
}
