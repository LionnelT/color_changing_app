import 'package:color_changing_app/pages/color_changing_page.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

/// This is a StatefulWidget that displays a splash screen with an animation
/// while the app is loading.
class SplashScreen extends StatefulWidget {
  /// The following line defines a constant constructor
  ///  for the SplashScreen widget.
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

/// This method sets up the SplashScreen widget and launches 
/// the ColorChangingPage after 3 seconds.
   @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ColorChangingPage(),
        ),
      );
    });
  }

/// This method builds the SplashScreen widget with a white background and
  /// an animation of color balls loading.
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: RiveAnimation.asset(
        'assets/color_balls_loading.riv',
      ),
    );
  }
}
