
resource "aws_instance" "web" {
  ami           = "ami-0a1179631ec8933d7"
  instance_type = "t1.micro"
  count = 2
}
