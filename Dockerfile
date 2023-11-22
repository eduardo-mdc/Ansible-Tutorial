# Dockerfile
FROM python:latest

# Install SSH server
RUN apt-get update && \
    apt-get install -y openssh-server && \
    mkdir /var/run/sshd

# Set root password
RUN echo 'root:admin' | chpasswd

# Expose SSH port
EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
