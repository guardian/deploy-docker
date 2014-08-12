# Deploy Dockerfile

# Pull base image.
FROM dockreg.gutools.co.uk:8080/centos6-jdk1.7

# Create user
RUN useradd -m -d /home/jvmuser -s /bin/bash -p jvmuser jvmuser

# Define working directory.
WORKDIR /home/jvmuser

# Expose ports.
EXPOSE 8080
