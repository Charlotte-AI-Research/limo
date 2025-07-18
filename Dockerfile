FROM ros:jazzy-ros-base

RUN apt-get update && apt-get install -y \
    apt-get install ros-jazzy-joint-state-publisher-gui \
    apt-get install ros-jazzy-rqt-robot-steering \
    apt-get install ros-jazzy-turtlesim



