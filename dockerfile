FROM ubuntu:latest

# Install necessary dependencies
RUN apt-get update && \
    apt-get install -y fortune cowsay netcat

# Copy the Wisecow.sh script into the container
COPY wisecow.sh /wisecow.sh
RUN chmod +x /wisecow.sh

# Expose the port
EXPOSE 4499

# Command to run the Wisecow application
CMD ["/wisecow.sh"]
