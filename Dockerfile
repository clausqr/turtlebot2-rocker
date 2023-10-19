FROM osrf/ros:melodic-desktop-full

RUN mkdir -p /tb2/src
WORKDIR /tb2
RUN . /opt/ros/melodic/setup.sh && catkin_make
RUN apt update && apt install -y curl rviz
RUN curl -sLf https://raw.githubusercontent.com/gaunthan/Turtlebot2-On-Melodic/master/install_basic.sh | bash
RUN . /opt/ros/melodic/setup.sh && catkin_make
RUN echo source /tb2/devel/setup.bash >> /root/.bashrc
#  roslaunch turtlebot_gazebo turtlebot_world.launch &
#  roslaunch turtlebot_teleop keyboard_teleop.launch

## Run with:
# rocker --x11 --nvidia ros:melodic-turtlebot2 bash
