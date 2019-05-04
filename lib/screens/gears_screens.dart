import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class GearsScreen extends StatefulWidget {
  GearsScreen({Key key}) : super(key: key);

  _GearsScreenState createState() => _GearsScreenState();
}

class _GearsScreenState extends State<GearsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          child: FlareActor(
            'assests/AnimGears.flr',
            animation: 'spin1',
          ),
        ),
      ),
    );
  }
}
