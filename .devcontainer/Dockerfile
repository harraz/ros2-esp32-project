FROM osrf/ros:jazzy-desktop-full

# Install dev & robotics tools
RUN apt-get update && \
    apt-get install -y \
    sudo \
    python3-colcon-common-extensions \
    python3-rosdep \
    build-essential \
    git \
    curl \
    unzip \
    udev \
    usbutils \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Initialize rosdep
RUN rosdep init || echo "rosdep already initialized"

# Always auto-source ROS in shells
RUN echo "source /opt/ros/jazzy/setup.bash" >> /etc/bash.bashrc
ENV SHELL=/bin/bash

# Pre-create workspace directories
RUN mkdir -p /root/ros_ws/src

# Copy workspace setup script
COPY setup_ros_ws.sh /root/setup_ros_ws.sh
RUN chmod +x /root/setup_ros_ws.sh

# Set working directory
WORKDIR /root/ros_ws

# Default user: root (avoids hardware permission issues)
USER root
