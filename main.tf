provider "aws" {
  region = var.region-name
  access_key = var.access-key
  secret_key = var.secret-key
}

resource "aws_security_group" "ssh-sg" {
  name = "ssh_whitelist"
  description = "used for restricted ssh access"
  ingress {
    cidr_blocks = [var.ssh-ip-whitelist]
    from_port = 22
    to_port = 22
    protocol = "tcp"
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}

resource "aws_instance" "ec2_vm" {
  ami = var.ami-id
  instance_type = var.instance-type
  vpc_security_group_ids = ["${aws_security_group.ssh-sg.id}"]
  tags = {
    Name = "test"
  }
}
