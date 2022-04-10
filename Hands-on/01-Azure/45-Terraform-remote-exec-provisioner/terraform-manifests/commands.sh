# get terraform version
terraform version
# Terraform v0.13.5

# get terraform commands
terraform

# init terraform's Azure provider (main.tf)
terraform init

# display the terraform template
cat main.tf

# plan and preview terraform changes
terraform plan

# deploy terraform infra
terraform apply

# Verify
#1) Login to Azure VM Instance
ssh -i ssh-keys/terraform-azure.pem azureuser@PUBLIC_IP_ADDRESSS_OF_YOUR_VM
ssh -i ssh-keys/terraform-azure.pem azureuser@54.197.54.126

#2) Verify /tmp for file named file-copy.html all files copied
ls -lrt /tmp/file-copy.html

#3) Verify /var/www/html for a file named file-copy.html
ls -lrt /var/www/html/file-copy.html

#4) Access via browser
curl http://localhost/file-copy.html

exit

# destroy infra
terraform destroy
