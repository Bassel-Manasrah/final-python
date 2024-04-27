# use an official Python runtime as a base image
FROM python:3.7-slim

# set the working directory in the container
WORKDIR /app

# copy the current directory contents into the container at /app
COPY . /app

# install dependencies
RUN pip install -r requirements.txt

# expose port 5000
EXPOSE 5000

# run the application
CMD ["python", "app.py"]
