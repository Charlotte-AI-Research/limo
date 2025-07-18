FROM ros:jazzy-ros-base

RUN apt-get update && apt-get install -y \
    ros-jazzy-joint-state-publisher-gui \
    ros-jazzy-rqt-robot-steering \
    ros-jazzy-turtlesim



