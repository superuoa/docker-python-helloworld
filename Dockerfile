FROM registry.access.redhat.com/ubi9/python-311@sha256:9466b94e3c872ef18ced7b815c446ca32b413ee116e5a394d90413becb5cd5e9

# Add requirements file in the container
COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt

# Add source code in the container
COPY main.py ./main.py

# Define container entry point (could also work with CMD python main.py)
ENTRYPOINT ["python", "main.py"]