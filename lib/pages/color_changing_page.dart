import 'dart:math';

import 'package:flutter/material.dart';

/// The following line defines a new StatefulWidget called ColorChangingPage.
class ColorChangingPage extends StatefulWidget {
  /// The following line defines a constant constructor
  ///  for the ColorChangingPage widget.
  const ColorChangingPage({super.key});

  @override
  State<ColorChangingPage> createState() => _ColorChangingPageState();
}

class _ColorChangingPageState extends State<ColorChangingPage> {
  final int maxRandomValue = 0xffffffff;

  final ColorChanger colorChanger = ColorChanger();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          colorChanger.changeBackgroundColor();
        });
      },
      child: Scaffold(
        backgroundColor: colorChanger.getBackgroundColor(),
        body: const Center(
          child: Text(
            'Hello there',
            style: TextStyle(fontSize: 32),
          ),
        ),
      ),
    );
  }
}

///
class ColorChanger {
  Color _backgroundColor = Colors.white;
  static const int _maxRandomValue = 0xffffffff;

  ///df
  Color changeBackgroundColor() {
    return _backgroundColor =
        Color(Random().nextInt(_maxRandomValue)).withOpacity(1.0);
  }

  ///
  Color getBackgroundColor() => _backgroundColor;
}
