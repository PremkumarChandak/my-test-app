My Test Web App
This is a my test application using Python Flask. This is used in the demonstration of the creation of docker image.

Below are the steps required to get this working on a base linux system.

1. Install all required dependencies
2. Install and Configure Web Server
3. Start Web Server

Let's Start

Step 1: Install all required dependencies
Python and its dependencies

apt-get install -y python3 python3-pip python3-venv

Step 2. Install and Configure Web Server
Install Python Flask dependency

pip3 install flask

Copy app.py or download it from a source repository

Step 3. Start Web Server
Start web server

FLASK_APP=app.py flask run --host=0.0.0.0

Step 4. Test
Open a browser and go to URL

http://<IP>:8080                            => Welcome
http://<IP>:8080/how%20are%20you            => I am good, how about you?# my-test-app