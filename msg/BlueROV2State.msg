# This expresses the state-space model of a BlueROV2 with a 6DOF
# configuration. 
# 
# The state is modeled using linear position in the global frame,
# linear velocity, a quaternion, and angular velocity in the body
# frame.

#
std_msgs/Header header

#
geometry_msgs/Vector3 position
geometry_msgs/Vector3 velocity
geometry_msgs/Quaternion quaternion
