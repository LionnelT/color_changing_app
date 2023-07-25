import 'package:color_changing_app/pages/color_changing_page.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

/// The following line defines a new StatefulWidget called SplashScreen.
class SplashScreen extends StatefulWidget {
  /// The following line defines a constant constructor
  ///  for the SplashScreen widget.
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

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
