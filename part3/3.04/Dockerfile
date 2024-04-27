FROM docker:25-git

# Set the working directory
WORKDIR /usr/src/app

# Copy the builder script into the container
COPY builder.sh .

# Make the builder script executable
RUN chmod +x builder.sh

# Set the entrypoint to the builder script
ENTRYPOINT ["./builder.sh"]
