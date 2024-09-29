# Use the Bitnami Redis image as a base
FROM bitnami/redis:7.2.5

# Switch to root user to set permissions
USER root

# Create necessary directories and set ownership to UID 1001
RUN mkdir -p /opt/bitnami/redis/tmp /opt/bitnami/redis/data/appendonlydir && \
  chown -R 1001:1001 /opt/bitnami/redis/tmp /opt/bitnami/redis/data/appendonlydir

# Switch back to the Redis user
USER 1001
