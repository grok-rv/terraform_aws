variable "region-name" {
  description = "region name of the amazon provider"
}
variable "ssh-ip-whitelist" {
  description = "whitelisted ssh ip"
}

variable "instance-type" {
  description = "type of ec2 instance"
}

variable "access-key" {
  description = "access key for iam user on aws account"
}

variable "secret-key" {
  description = "access secret for iam user on aws account" 
}

variable "ami-id" {
  description = "amazon machine image id"
}

