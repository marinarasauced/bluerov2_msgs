cmake_minimum_required(VERSION 3.8)
project(bluerov2_msgs)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

find_package(ament_cmake REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(std_msgs REQUIRED)
find_package(rosidl_default_generators REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/BlueROV2State.msg"

  "srv/BlueROV2SetDepth.srv"
  "srv/BlueROV2SetHeading.srv"

  DEPENDENCIES geometry_msgs std_msgs
)

ament_package()
