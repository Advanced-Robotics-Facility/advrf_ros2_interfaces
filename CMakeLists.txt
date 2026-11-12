cmake_minimum_required(VERSION 3.8)
project(advrf_ros2_interfaces)

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)

find_package(action_msgs REQUIRED)
find_package(std_msgs REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  # Messages (State - RX)
  "msg/Motor.msg"

  "msg/JointControlEvent.msg"

  # Messages (Command - TX)
  "msg/MotorTxPdo.msg"
  "msg/MotorTxPdoVector.msg"

  # Actions
  "action/GoToJointPositions.action"

  # Services
  "srv/MotorPowerRequest.srv"
  "srv/SetJointGains.srv"

  DEPENDENCIES std_msgs action_msgs
)

ament_export_dependencies(rosidl_default_runtime)

ament_package()
