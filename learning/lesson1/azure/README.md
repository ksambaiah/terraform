
 # Azure - Starting with Terraform

 ## Installation and configuration
    
    Install azure cli using the command on mac as

    ```
    brew update && brew install azure-cli

    ```

    We don't setup keys like aws in azure, azure has something called subscriptions.

    ```
    az login
The default web browser has been opened at https://login.microsoftonline.com/organizations/oauth2/v2.0/authorize. Please continue the login in the web browser. If no web browser is available or if the web browser fails to open, use device code flow with `az login --use-device-code`.
[
  {
    "cloudName": "AzureCloud",
    "homeTenantId": "something",
    "id": "something",
    "isDefault": true,
    "managedByTenants": [],
    "name": "abcd",
    "state": "Enabled",
    "tenantId": "tenant name here",
    "user": {
      "name": "xxxxxxx@outlook.com",
      "type": "user"
    }
  }
]
  ```
 
  Run the command
  ```
   az account set -s  abcd
  ```
   You are done and you can use terraform init, plan, validate apply destroy commands with tf files
   in the current directory.

   How is VPC in Azure different from AWS? We will cover more on this in next lessons.
