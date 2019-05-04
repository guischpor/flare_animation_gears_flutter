import 'package:flutter/material.dart';
import 'package:gears_animation_flutter/screens/gears_screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GearsScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
