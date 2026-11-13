# advrf_ros2_interfaces
ros version: jazzy

## Quick Use

```bash
ros2 interface list | grep advrf_ros2_interfaces
ros2 interface show advrf_ros2_interfaces/msg/MotorTxPdo
```

## Edit Config

Interface definitions are stored in `msg/`, `srv/` and `action/` and registered in `CMakeLists.txt`. Rebuild the package and its consumers after changing a definition.

## Nodes Details

This package defines interfaces and has no node executable.

| Kind | Interfaces |
| --- | --- |
| Messages | `MotorRxPdo`, `MotorTxPdo`, `JointControlEvent` |
| Services | `SetJointGains` |
| Actions | `GoToJointPositions` |

`MotorRxPdo` carries telemetry as parallel arrays and retains its snapshot timestamp.
`MotorTxPdo` carries commands as parallel arrays: every array must have the same length
as `ecat_id`, including unused fields filled with zero. A subset of motor IDs is allowed.
`header.stamp` records command generation time; it is separate from the PDO `ts` field
and does not replace the reception watchdog.

This replaces the former `Motor` and `MotorTxPdoVector` interfaces. Rebuild and restart
all publishers and subscribers together; the topic names remain unchanged.

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
