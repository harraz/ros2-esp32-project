#!/bin/bash
set -e

echo "Setting up ROS workspace..."

# Fix rosdep permissions if needed
sudo chmod 777 /etc/ros/rosdep/sources.list.d || true

# Update rosdep
rosdep update || true

# Install dependencies for any packages in src/
rosdep install --from-paths src --ignore-src -y || true

echo "ROS2 workspace ready. You can now colcon build."

