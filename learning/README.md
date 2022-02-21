
# Basics on setting up of Terrafarm

## AWS

  Install awscli on mac system as
  ```
    brew install awscli
  ```
 
  Visit aws console page and generate AWS access Key id and secret access key.
  Configure AWS to setup keys in your system as
  ```
     aws configure
     AWS Access Key ID [None]: your_access_keyid
     AWS Secret Access Key [None]: your_secret_access_key
     Default region name [None]: ap-south-1
     Default output format [None]: json
  ```
  
  The above command creates files  ~/.aws/config and ~/.aws/credentials 

  ``` cat ~/.aws/config
      [default]
      region = ap-south-1
      output = json
      $cat ~/.aws/credentials
      [default]
      aws_access_key_id = aws_access_key_here
      aws_secret_access_key = secret_key_here```
   Please note the default in the above, we will visit later.
