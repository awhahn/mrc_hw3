#Move turtle one to starting location 
rosservice call /turtle1/teleport_absolute 1 2 0

#clear all previous marks
rosservice call /clear

#Generate turtle two
rosservice call /spawn 6 2 1.57 "turtle2"

#Change turtle pen colors
rosservice call /turtle1/set_pen 255 255 255 5 0
rosservice call /turtle2/set_pen 1 1 1 5 0

#Capital A with First turtle 
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 1]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[4.0, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, -2.0]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[2.0, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, -2.1]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[2.0, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[-2.0, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 2.1]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[2.0, 0.0, 0.0]' '[0.0, 0.0, 0.0]'

#lowercase N with turtle 2
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[3.0, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[-1.0, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[3.14, 0.0, 0.0]' '[0.0, 0.0, -3.14]'
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[2.0, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
