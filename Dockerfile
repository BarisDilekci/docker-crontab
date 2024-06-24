FROM ubuntu:20.04 

# Copy the cron job file
COPY crontab /etc/cron.d/my-cron

# Give execution rights on the cron job
RUN chmod 0644 /etc/cron.d/my-cron

# Install cron
RUN apt-get update && apt-get -y install cron

# Run the command on container startup
CMD ["cron", "-f"]
