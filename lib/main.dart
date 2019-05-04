import 'package:flutter/material.dart';
import 'package:gears_animation_flutter/screens/gears_screens.dart';
import 'package:gears_animation_flutter/screens/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
