
# Lesson1 with AWS

## General introduction of terraform

* Few commands to check terraform
* terraform plan
* terraform validate
* terraform apply

## Variables.tf file

   It is a good idea to have separate variables file instead of mixing with terraform.
   We have region and no. of public subnets defined in variables.

## provider.tf

   Our file contains provider "aws",  region  = var.region and  profile = "default". All 
   are self explanatory except profile. We need aws access key and secret key to work with
   terraform. We are explaining take default profile, what it means?
   awscli one can define accesskey and secret key in ~/.aws/credentials file and take default
   profile from it.

## vpc.tf
   This file is self explanatory not going to explain it.

   You can find more details [here](https://aws.plainenglish.io/infra-as-code-create-aws-vpc-and-subnets-using-terraform-and-best-practices-eaba8c3e1aef)
