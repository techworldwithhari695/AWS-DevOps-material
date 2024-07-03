provider "aws" {
  region     = "us-east-1"
  access_key = "xxxxxxxxxxxxxxxxxxx"
  secret_key = "xxxxxxxxxxxxxxxxxxxxxxxxxx"
}
resource "aws_instance" "myweb" {
  ami           = "ami-unique_id"
  instance_type = "t2.micro"
  tags = {
    Name = "myfirstec2"
  }
}
