import 'package:flutter/material.dart';

class SliderContent extends StatefulWidget {
  const SliderContent({super.key});

  @override
  State<SliderContent> createState() => _SliderState();
}

class _SliderState extends State<SliderContent> {
  double _sliderValue = 50;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          '$_sliderValue',
          style: TextStyle(fontSize: 40),
        ),
        SizedBox(
          height: 40,
        ),
        Slider(
          value: _sliderValue,
          max: 100,
          divisions: 10,
          onChanged: (double value) {
            setState(() {
              _sliderValue = value;
            });
          },
        ),
      ],
    );
  }
}
