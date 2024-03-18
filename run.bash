echo roslaunch turtlebot_gazebo turtlebot_world.launch
echo 

rocker --volume $(pwd)/default.rviz:/opt/ros/melodic/share/rviz/default.rviz --x11 ros1-melodic-turtlebot2


