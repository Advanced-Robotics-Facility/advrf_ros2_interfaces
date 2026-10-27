cmake_minimum_required(VERSION 3.8)
project(advrf_ros2_interfaces)

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)

find_package(action_msgs REQUIRED)
find_package(std_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(rcl_interfaces REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  # Messages (State - RX)
  "msg/Motor.msg"
  "msg/Imu.msg"
  "msg/PowerBoard.msg"
  "msg/ForceTorque.msg"
  "msg/Pump.msg"
  "msg/Valve.msg"
  "msg/Gripper.msg"

  "msg/JointControlEvent.msg"

  # Messages (Command - TX)
  "msg/MotorTxPdo.msg"
  "msg/MotorTxPdoVector.msg"
  "msg/GripperTxPdo.msg"
  "msg/GripperTxPdoVector.msg"
  "msg/ValveTxPdo.msg"
  "msg/ValveTxPdoVector.msg"
  "msg/PowerBoardTxPdo.msg"
  "msg/ForceTorqueTxPdo.msg"
  "msg/PumpTxPdo.msg"

  # Messages (Various)
  "msg/AuxPdo.msg"
  "msg/AuxCmd.msg"
  "msg/CtrlCmd.msg"
  "msg/EcatMasterCmd.msg"
  "msg/FlashCmd.msg"
  "msg/FoeMaster.msg"
  "msg/Gains.msg"
  "msg/HomingPar.msg"
  "msg/KeyValStr.msg"
  "msg/MotorPdoCmd.msg"
  "msg/MotorsPdoCmd.msg"
  "msg/PdoAuxCmd.msg"
  "msg/ReplCmdContent.msg"
  "msg/PeriodPar.msg"
  "msg/SlaveObj.msg"
  "msg/SlaveRegistryWrite.msg"
  "msg/SlaveSdoCmd.msg"
  "msg/SlaveSdoInfo.msg"
  "msg/SmoothPar.msg"
  "msg/SmoothVelPar.msg"
  "msg/TmStats.msg"
  "msg/TrajectoryCmd.msg"
  "msg/TrjQueueCmd.msg"
  "msg/TrjStatus.msg"

  # Actions
  "action/GoToJointPositions.action"

  # Services
  "srv/ReplCmd.srv"
  "srv/ReplInfo.srv"
  "srv/MotorPowerRequest.srv"

  DEPENDENCIES std_msgs geometry_msgs action_msgs
)

ament_export_dependencies(rosidl_default_runtime)

ament_package()