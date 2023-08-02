#!/bin/bash

sudo yum update -y
sudo amazon-linux-extras install docker -y
sudo service docker start
sudo usermod -aG docker ec2-user
sudo docker pull my_dockerized_app:latest
sudo docker run -d -p 80:5000 my_dockerized_app:latest
sudo sed -i "s|https://example-object-storage-url.com/image.jpg|https://<your-s3-bucket-name>.s3.amazonaws.com/image.jpg|g" /path/to/your/app.py
sudo docker restart <container_id>
