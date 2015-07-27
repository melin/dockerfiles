# Pull base image.
FROM melin/centos6-base

MAINTAINER melin <libinsong1204@gmail.com>

# Install LuaJIT.
RUN \
  cd /usr/local && \
  wget http://luajit.org/download/LuaJIT-2.0.3.tar.gz && \
  tar xvzf LuaJIT-2.0.3.tar.gz && \
  cd LuaJIT-2.0.3 && \
  make && \
  make install && \
  rm -rf LuaJIT-2.0.3.tar.gz

RUN \
  echo "/usr/local/lib" >> /etc/ld.so.conf

# Download lua-nginx-module.
RUN \
  cd /usr/local/src && \
  wget https://github.com/openresty/lua-nginx-module/archive/v0.9.10.tar.gz && \
  tar xvzf v0.9.10.tar.gz && \
  rm -rf v0.9.10.tar.gz

# Download lua-nginx-module.
RUN \
  cd /usr/local && \
  wget http://exim.mirror.fr/pcre/pcre-8.35.tar.gz && \
  tar xvzf pcre-8.35.tar.gz && \
  cd pcre-8.35 && \
  ./configure && \
  make && \
  make install && \
  rm -rf pcre-8.35.tar.gz

# Install ssl
RUN \
  cd /usr/local/src && \
  wget http://www.openssl.org/source/openssl-1.0.1h.tar.gz && \
  tar -xvzf openssl-1.0.1h.tar.gz && \
  rm -rf openssl-1.0.1h.tar.gz

RUN \ 
  cd /usr/local/src && \
  wget http://zlib.net/zlib-1.2.8.tar.gz && \
  tar -xvzf zlib-1.2.8.tar.gz && \
  rm -rf zlib-1.2.8.tar.gz

RUN \
  yum -y install perl

# Install tengine.
RUN \
  cd /usr/local && \
  wget http://tengine.taobao.org/download/tengine-2.0.3.tar.gz && \
  tar xvzf tengine-2.0.3.tar.gz && \
  cd tengine-2.0.3 && \
  export LUAJIT_LIB=/usr/local/lib && \
  export LUAJIT_INC=/usr/local/include/luajit-2.0 && \
  ./configure --prefix=/usr/local/nginx \
    --with-openssl=/usr/local/src/openssl-1.0.1h \
    --with-zlib=/usr/local/src/zlib-1.2.8 \
    --add-module=/usr/local/src/lua-nginx-module-0.9.10 && \
  make  && \
  make install && \
  rm -rf tengine-2.0.3.tar.gz

# Expose ports.
EXPOSE 80

