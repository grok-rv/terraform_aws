output "compute" {
  value = "Terraform successfully created ${aws_instance.ec2_vm.id} vm"
}
output "secgroup" {
  value = "Terraform successfully created ${aws_security_group.ssh-sg.name} security group"
}
