resource "aws_instance" "web" {
  ami             = var.ami
  instance_type   = var.size
  subnet_id       = var.subnet_id
  security_groups = var.security_groups

  tags = {
    "Name"        = "Server from module"
    "Environment" = "Training"
  }
}