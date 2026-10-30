# Acquisition timestamp and frame metadata.
std_msgs/Header header
# Drive names; every following sequence uses this order.
string[] name
# EtherCAT status words.
uint32[] statusword
# Active drive modes of operation.
int32[] modes_of_op
# Motor-side positions.
float32[] motor_pos
# Motor-side velocities.
float32[] motor_vel
# Link-side positions.
float32[] link_pos
# Link-side velocities.
float32[] link_vel
# Measured motor currents.
float32[] current
# Measured motor torques.
float32[] torque
# Requested positions.
float32[] demanded_pos
# Requested velocities.
float32[] demanded_vel
# Requested torques.
float32[] demanded_torque
# Requested currents.
float32[] demanded_current
# Applied controller effort.
float32[] control_effort
# Motor temperatures.
float32[] motor_temp
# Drive temperatures.
int32[] drive_temp
# Drive error codes.
uint32[] error_code
# Human-readable drive error reports.
string[] error_report
# Device fault status words.
uint32[] fault
# Round-trip-time diagnostics.
uint32[] rtt
