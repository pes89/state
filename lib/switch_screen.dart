import 'package:flutter/material.dart';

class SwitchContent extends StatefulWidget {
  const SwitchContent({super.key});

  @override
  State<SwitchContent> createState() => _SwitchContentState();
}

class _SwitchContentState extends State<SwitchContent> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Text(light ? 'ON' : 'OFF'),
      SizedBox(
        height: 40,
      ),
      Switch(
        value: light,
        activeColor: Colors.green,
        inactiveThumbColor: Colors.red,
        onChanged: (bool value) {
          setState(() {
            light = value;
          });
        },
      ),
    ]);
  }
}
