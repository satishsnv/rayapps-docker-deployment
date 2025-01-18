FROM python:3.12-slim

# install the base packages required
RUN pip install ray[serve]

# Set the working directory
WORKDIR /mlapps

# Copy your application code into the container
COPY apps/ /mlapps/