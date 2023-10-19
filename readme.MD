# turtlebot2-rocker

A ROS1 Melodic container to run Turtlebot2 sims and robot under Ubuntu 22.04 and other modern distributions.

## Getting Started

### Prerequisites

* Docker + rocker installed and configured.

### Building and Running

1. Clone this repo.
1. Run `rocker build -t ros1-melodic-turtlebot2 .` in the repo folder.
1. Run `bash run.bash` to start the container.

### Running the Turtlebot2 simulation

1. Run `roslaunch turtlebot_gazebo turtlebot_world.launch` to start the simulation.
1. Run `rviz` to start the visualization.
1. Run `rqt` to start the rqt GUI and start playing with the robot.

### Running the Turtlebot2 robot

1. Run as root `bash run.bash` to start the container.
2. Run `roslaunch turtlebot_bringup minimal.launch` to start the robot. (may need to edit rocker launch to map serial port, joystick, usb, etc.)


### TO-DO

1. Add joystick mapping to the container.


