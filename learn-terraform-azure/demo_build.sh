## To get started deploying stuff to Azure, we need to be able to authenticate, 
## thus, we create an app registartion and get the credentials for it.

az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/57d***08f"

export ARM_CLIENT_ID="836***4f6"
export ARM_CLIENT_SECRET="ame***bmy"
export ARM_SUBSCRIPTION_ID="57d***08f"
export ARM_TENANT_ID="c17***65c"

## Initialize your Terraform configuration. Need to run in the directory where your .tf file is located.
terraform init

## Format and validate the configuration
terraform fmt       # auto updates all tf files in the current directory
terraform validate  # validate the configuration files in a directory

## Apply your Terraform Configuration
terraform apply # you'll be prompted to confirm the action

## Inspect your state file
terraform show

## Show the individaul azure resources
terraform state list

