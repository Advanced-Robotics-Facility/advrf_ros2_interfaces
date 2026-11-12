# advrf_ros2_interfaces
ros version: jazzy

## Quick Use

```bash
ros2 interface list | grep advrf_ros2_interfaces
ros2 interface show advrf_ros2_interfaces/msg/MotorTxPdoVector
```

## Edit Config

Interface definitions are stored in `msg/`, `srv/` and `action/` and registered in `CMakeLists.txt`. Rebuild the package and its consumers after changing a definition.

## Nodes Details

This package defines interfaces and has no node executable.

| Kind | Interfaces |
| --- | --- |
| Messages | `Motor`, `MotorTxPdo`, `MotorTxPdoVector`, `JointControlEvent` |
| Services | `MotorPowerRequest`, `SetJointGains` |
| Actions | `GoToJointPositions` |

## Dependencies

- `action_msgs`
- `std_msgs`
- `rosidl_default_generators`
- `rosidl_default_runtime`

## TroubleShooting

| Symptom | Check |
| --- | --- |
| Interface not found | Build the package and source the workspace |
| Consumer uses an obsolete interface | Update imports/includes and rebuild the consumer |
