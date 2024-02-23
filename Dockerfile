# Use an official Python runtime as a parent image
FROM registry.redhat.io/rhel9/python-39@sha256:4da8ddb12096a31d8d50e58ea479ba2fe2f252f215fbaf5bf90923a1827463ba

# Set the working directory in the container
WORKDIR /app

# Copy the local directory contents into the container at /app
COPY . /app

# Run Python script when the container launches
CMD ["python", "hello_world.py"]