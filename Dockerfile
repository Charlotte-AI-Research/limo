FROM ros:jazzy-ros-base

RUN apt-get update && apt-get install -y \
    ros-jazzy-joint-state-publisher-gui \
    ros-jazzy-rqt-robot-steering \
    ros-jazzy-turtlesim \
    ros-jazzy-joy \
    ros-jazzy-teleop-twist-joy \
    ros-jazzy-teleop-twist-keyboard \
    ros-jazzy-slam-toolbox \
    ros-jazzy-robot-state-publisher \
    ros-jazzy-rtabmap \
    ros-jazzy-rtabmap-ros \
    ros-jazzy-realsense2-camera \
    ros-jazzy-realsense2-description \
    ros-jazzy-realsense2-ros

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key F6E65AC044F831AC80A06380C8B3A55A6F3EFCDE || sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key F6E65AC044F831AC80A06380C8B3A55A6F3EFCDE
RUN add-apt-repository "deb https://librealsense.intel.com/Debian/apt-repo $(lsb_release -cs) main" -u
RUN apt-get install librealsense2-utils
RUN apt-get install librealsense2-dev
