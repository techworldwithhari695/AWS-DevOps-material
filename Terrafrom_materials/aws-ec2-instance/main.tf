resource "aws_instance" "AMZLinux2" {
  ami           = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  availability_zone = "${var.aws_region}a"
  #count = 2

  tags = {
    Name = "${var.name}"
  }
}
resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQz1x2cEikKDEY0aIj41qgxMCP/iteneqXSIFZBp5vizPvaoIR3Um9xK7PGoW8giupGn+EPuxIA4cDM4vzOqOkiMPhz5XK0whEjkVzTo4+S0puvDZuwIsdiW9mxhJc7tgBNL0cYlWSYVkz4G/fslNfRPW5mYAM49f4fhtxPb5ok4Q2Lg9dPKVHO/Bgeu5woMc7RY0p1ej6D4CKFE6lymSDJpW0YHX/wqE9+cfEauh7xZcG0q9t2ta6F6fmX0agvpFyZo8aFbXeUBr7osSCJNgvavWbM/06niWrOvYX2xwWdhXmXSrbX8ZbabVohBK41 email@example.com"
}
/* resource "aws_key_pair" "my_key_pair" {
  key_name   = "my_key_pair" #name of the your key pair
  public_key = file("~/.ssh/id_rsa.pub") #path to your public key file
} */
/* resource "aws_key_pair" "my_key_pair" {
  key_name   = "my-key-pair"            # Name for your key pair
  public_key = file("~/.ssh/id_rsa.pub") # Path to your public key file
} *
