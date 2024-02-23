# Use an official Python runtime as a parent image
FROM registry.access.redhat.com/ubi9/python-311@sha256:9466b94e3c872ef18ced7b815c446ca32b413ee116e5a394d90413becb5cd5e9

# Add requirements file in the container
COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["python3"]
CMD ["main.py"]