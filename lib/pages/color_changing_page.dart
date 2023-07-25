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


/// This is an instance of the ColorChanger class that is used to change
  /// the background color of the page.
  final ColorChanger colorChanger = ColorChanger();

  @override
  Widget build(BuildContext context) {
    /// This GestureDetector widget listens for taps on the screen.
    return GestureDetector(
      onTap: () {
        /// This setState method calls the changeBackgroundColor() method on the
        /// ColorChanger object.
        setState(() {
          colorChanger.changeBackgroundColor();
        });
      },
      child: Scaffold(
        /// This backgroundColor property sets the background color of the
        /// Scaffold widget.
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

/// This is a helper class that is used to change the background color of the
/// ColorChangingPage widget.
class ColorChanger {
  /// This is the current background color of the page.
  Color _backgroundColor = Colors.white;

/// This is the maximum value that can be used to generate a random number.
  static const int _maxRandomValue = 0xffffffff;

 /// This method generates a random color and sets it as the background color
  /// of the ColorChangingPage widget.
  Color changeBackgroundColor() {
    /// This code sets the _backgroundColor property to the color
    ///  that corresponds to the random number 
    /// and returns the new background color
    return _backgroundColor =
        Color(Random().nextInt(_maxRandomValue)).withOpacity(1.0);
  }

 /// This method returns the current background color of the page.
  Color getBackgroundColor() => _backgroundColor;
}
