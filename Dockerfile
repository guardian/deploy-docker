# Deploy Dockerfile

# Pull base image.
FROM dockreg.gutools.co.uk:8080/centos6-jdk1.7

# Define user and working dir
WORKDIR /home/jvmuser
USER jvmuser
ENV HOME /home/jvmuser

# Run a build, to gather all the sbt/ivy deps and clean up
RUN git clone git://github.com/guardian/deploy.git && \
    cd deploy && \
    ./sbt-tc magenta-cli/assembly riff-raff/magenta && \
    cd .. && rm -fr deploy

# Expose ports.
EXPOSE 8080
