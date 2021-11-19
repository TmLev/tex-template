# Base Ubuntu image.
FROM ubuntu:20.10

# Update system.
RUN apt upgrade && apt update

# Set locale.
# https://stackoverflow.com/a/28406007/10404007
RUN apt install -y locales
RUN sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen && locale-gen
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# Set Etc/UTC timezone by default.
RUN DEBIAN_FRONTEND="noninteractive" apt install -y tzdata

# Install system-wide dependencies.
COPY install-deps.sh /
RUN /install-deps.sh
