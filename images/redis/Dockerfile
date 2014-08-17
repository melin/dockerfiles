#
# Redis Dockerfile
#
# https://github.com/dockerfile/redis
#

# Pull base image.
FROM melin/centos6:base

# Install Redis.
RUN \
  cd /usr/local && \
  wget http://download.redis.io/redis-stable.tar.gz && \
  tar xvzf redis-stable.tar.gz && \
  cd redis-stable && \
  make && \
  make install && \
  rm -rf redis-stable.tar.gz && \
  cp -f src/redis-sentinel /usr/local/bin

# Define default command.
ENTRYPOINT ["redis-server"]

# Expose ports.
EXPOSE 6379
