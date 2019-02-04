# ==================
# Docker Build Image
# By Samuel Hornsey
# ==================

# Use latest node version.
FROM node:11.0.0

MAINTAINER Samuel Hornsey <hornseysam498@gmail.com>

# Pre install webpack, webpack cli and node-sass
RUN npm install --global webpack \
    webpack-cli \
    --unsafe-perm node-sass
    
# Install AWS cli
RUN apt-get update && \
    apt-get install -y \
        python \
        python-dev \
        python-pip \
        python-setuptools \
        groff \
        less \
    && pip install --upgrade awscli \
    && apt-get clean