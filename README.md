# My-Web-applicaion
***Demo project***
: Setting up a simple web application on a cloud instance

Task 1: Infrastructure Setup.
>Compute instance for the application server(EC2)
I used terraform code to create EC2
1. Created a file named 'main.tf'.
2. Initialized the teraform in cmd.
    ``terraform init``
3. Validate the configuration to make sure configuration is correct.
    ``terraform plan``
4. Apply terrform to create ec2.
    ``terraform apply``

>Created a object storage bucket for storing static content.

1. Logged into aws console.
2. Goto the s3 service.
3. Clicke 'Create Bucket' to create new s3 bucket.
4. Gived unique name and choose a region click create.
5.Added image in to the bucket .
6. Configured object "Make public using ACL".

Task 2: Application Setup (Docker).

>Created a web application.

 1. `app.py` is the main flask app.
 2. `templates/index.html` is the HTML page.
 3. Created  `requirements.txt` file to list requied dependecies for he flask app.
 4. Created a `Docker` file for building docker image.
 5. Build docker imge using `Docker` file.
 >Opened command prompt in project directory and run the following command.
 
 6. ```docker build -t my_dockerized_app .```
 7. After image built run the docker container using ``docker run -p 5000:5000 my_dockerized_app`` command.
 8. Now  flask application running inside docker conainer. visit http://localhost:5000

Task 3: Configuration Management
    
>I connect ec2 for automate the deployement of the dockerized application and i used bash script given below

1.For Update package repositories and install Docker for amazone linux is given below
``sudo yum update -y``

``sudo amazon-linux-extras install docker -y``

``sudo service docker start``

``sudo usermod -aG docker ec2-user``

2.Commamd for Pull the docker image is given below
``sudo docker pull my_demoweb_app:latest``

3.For run docker container
``sudo docker run -d -p 80:5000 my_demoweb_app:latest``

4.For restart the docker container to apply the changes ``sudo docker restart <093c735303535cf1d32cd2d70c5f604c31299396b71d3aa0e7295049655f34b2>``

5. ``chmod +x deploy_script.sh``

>After the commands it will automated the deployment of yo Dockerized application on the application server
  
>
