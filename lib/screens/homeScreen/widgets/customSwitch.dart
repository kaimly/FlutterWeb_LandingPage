import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:robigo/themes/theme.dart';

// Container foodIndicator({required Color color}) {
//   return Container(
//     padding: EdgeInsets.all(2),
//     child: CircleAvatar(
//       radius: 3,
//       backgroundColor: color,
//     ),
//     decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(4),
//         border: Border.all(color: color, width: 2)),
//   );
// }

class CustomflutterSwitch extends StatefulWidget {
  @override
  _CustomflutterState createState() => _CustomflutterState();
}

bool status = false;

class _CustomflutterState extends State<CustomflutterSwitch> {
  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      inactiveColor: grey,
      switchBorder: Border.all(color: grey),
      value: status,
      activeColor: Colors.white,
      activeToggleColor: successColor,
      showOnOff: false,
      onToggle: (val) {
        setState(() {
          status = val;
        });
      },
    );
  }
}
