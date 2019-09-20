terraform Root module to create security group and aws e2 instance
-----------------------------------------------------------------------

Security group is created to limit ssh access to the ec2 instance

Input variables:
------------------------

regionname, access_key, access_secret, whitelisted ip, amazon machine image



Terraform Initialize the provider:
-------------------------------------------------
terraform init


Terraform plan:
------------------------

terraform plan -out=tfplan


Terraform apply plan:
-----------------------------------

terraform apply tfplan



Terraform destroy resources:
-------------------------------------------

terraform destroy
