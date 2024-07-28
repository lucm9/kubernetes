# Use an official Python runtime as a parent image
FROM python:3.6

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt /app/

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Copy the rest of the application code into the container at /app
COPY . /app

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Run app.py when the container launches
COPY back.py /app
CMD python back.py
