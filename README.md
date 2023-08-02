# My-Web-applicaion
***Demo project***

Task 1: Infrastructure Setup
>Compute instance for the application server(EC2)
I used terraform code to create EC2
1. Created a file named 'main.tf'
2. Initialized the teraform in cmd
    ``terraform init``
3. Validate the configuration to make sure configuration is correct
    ``terraform plan``
4. Apply terrform to create ec2
    ``terraform apply``

>Created a object storage bucket for storing static content

1. Logged into aws console
2. Goto the s3 service
3. Clicke 'Create Bucket' to create new s3 bucket
4. Gived unique name and choose a region click create
5.Added image in to the bucket 
6. Configured object "Make public using ACL"

Task 2: Application Setup (Docker)

>Created a web application

 1. `app.py` is the main flask app
 2. `templates/index.html` is the HTML page
 3. Created  `requirements.txt` file to list requied dependecies for he flask app
 4. Created a `Docker` file for building docker image
   


  
