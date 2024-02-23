FROM registry.redhat.io/rhel9/python-39@sha256:4da8ddb12096a31d8d50e58ea479ba2fe2f252f215fbaf5bf90923a1827463ba

# Add requirements file in the container
COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt

# Add source code in the container
COPY main.py ./main.py

# Define container entry point (could also work with CMD python main.py)
ENTRYPOINT ["python", "main.py"]