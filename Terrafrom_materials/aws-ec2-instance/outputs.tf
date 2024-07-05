output "public_dns" {
  value = "${aws_instance.AMZLinux2.public_dns}"
}
