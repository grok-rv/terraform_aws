Requirements:
--------------------------------------

Terraform version v0.12.6 and more


terraform root module to create security group, e2 instance in default vpc, attach the security group to that ec2 
----------------------------------------------------------------------------------------------------------------------

Security group is created to limit ssh access to the ec2 instance

Input variables:
------------------------

regionname, access_key, access_secret, whitelisted ip, amazon machine image can be inputed as -var during terraform apply or during the terraform plan as an output plan



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

terraform destroy -auto-approve
