FROM 652007342827.dkr.ecr.eu-west-1.amazonaws.com/threebees-python:3.10-slim-buster

# Inside Container
# Make a new folder inside the container 
WORKDIR /backend-flask

# Outside Container -> Inside Container
# This contains the libraries needed to install to run the app
COPY requirements.txt requirements.txt

# Inside Container
# Install Python libraries images used for the app
RUN pip3 install -r requirements.txt

# Outside Container -> Inside Container
# . means everything in the current directory
# first . - /backend-flask (outside container)
# second . - /backend-flask (inside container)
COPY . .

# Set Eviroment Variables
# Inside Container - will remain set when the container is running
ENV FLASK_DEBUG=1

EXPOSE ${PORT}

# Command for running flask module in python3
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0", "--port=4567"] 