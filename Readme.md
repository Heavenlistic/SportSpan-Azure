Using the template https://github.com/thomast1906/thomasthorntoncloud-examples/tree/master/Terraform-writing-reusable-terraform-modules/terraform-module-example to deploy resources in Azure using Modules and terraform. Create Vnet Module in a folder so the main.tf file makes reference to the files in the Vnet folder. The module was been updated with the below changes:

1. In the providers.tf file, container name was changed to "tfstate" and the key "terraform.tfstate" was added

2. Create the file "create-azure-storage.sh" and run the bash script which automatically creates the backend Resource group, the storage account and the backend container to resolve blob error

3. The resource group name, the storage account name and the container name in the provider.tf file should have the same names in the file "create-azure-storage.sh" 

4. The variables.tf and the terraform.tfvars should have values to resolve error message

5. The terraform.tfvars should be in the main folder

6. In terraform.tfvars, appgw was added in front of subnet_address_name & subnet_address_prefix resulting in appgw_subnet_address_name & appgw_subnet_address_prefix respectively to resolve error message of missing required argument

7. In terraform.tfvars, to resolve error message of missing required argument, add
environment                 = "Environment" (should be the same as in variable.tf)
vnet_name                   = "vnet"

8. In main.tf, name was changed to vnet_name to resolve the error message

9. In case of error, delete .terraform folder and run the terrrafom commands again

10. Create touch .gitignore file and add all the files which will not be uploaded.

# Commands in the terminal for main folder path
1. az login > touch create-azure-storage.sh .gitignore > bash create-azure-storage.sh
2. terraform init > terraform plan > terraform apply > terraform destroy
3. (delete all previous .git folders to avoid error)
4. git init > git add .gitignore > git status > git commit -m "Initial push"
5. git add .
6.  git remote add origin (git link) 
    git branch -M main 
    git push -u origin main. 