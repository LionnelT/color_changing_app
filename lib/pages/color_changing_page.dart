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
  Color _backgroundColor = Colors.white;
  final int maxRandomValue = 0xffffffff;

  void _changeBackgroundColor() {
    setState(() {
      _backgroundColor =
          Color(Random().nextInt(maxRandomValue)).withOpacity(1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeBackgroundColor,
      child: Scaffold(
        backgroundColor: _backgroundColor,
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
