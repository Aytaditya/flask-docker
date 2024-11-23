# Using the offical python image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the dependencies file to the working directory that is /app 
COPY ./app /app/

# install dependencies
RUN pip install --no-cache-dir -r requirements.txt  
#install the dependencies listed in a requirements.txt

#Expose port 5000
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]