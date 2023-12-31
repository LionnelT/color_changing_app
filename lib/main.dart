import 'package:color_changing_app/pages/splash_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      isToolbarVisible: false,
      enabled: kIsWeb,
      builder: (context) => const Main(),
    ),
  );
}

/// This is the entry point of the Flutter app.
/// The [Main] widget serves as the root of the widget tree.
/// It's the starting point of the app's UI hierarchy.
class Main extends StatelessWidget {
  /// The following line defines a constant constructor for the Main widget.
  const Main({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Color Changing App',
      theme: ThemeProvider().getTheme(),
      home: const SplashScreen(),
    );
  }
}

/// This is a helper class that provides the app's theme.
class ThemeProvider {
  /// This method returns a ThemeData object that defines the app's color scheme
  /// and other visual properties.
  ThemeData getTheme() {
    return ThemeData(
      // This is the theme of your application.
      //
      // TRY THIS: Try running your application with "flutter run". You'll see
      // the application has a blue toolbar. Then, without quitting the app,
      // try changing the seedColor in the colorScheme below to Colors.green
      // and then invoke "hot reload" (save your changes or press the "hot
      // reload" button in a Flutter-supported IDE, or press "r" if you used
      // the command line to start the app).
      //
      // Notice that the counter didn't reset back to zero; the application
      // state is not lost during the reload. To reset the state, use hot
      // restart instead.
      //
      // This works for code too, not just values: Most code changes can be
      // tested with just a hot reload.
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    );
  }
}
