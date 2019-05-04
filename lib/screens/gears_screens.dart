import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class GearsScreen extends StatefulWidget {
  GearsScreen({Key key}) : super(key: key);

  _GearsScreenState createState() => _GearsScreenState();
}

class _GearsScreenState extends State<GearsScreen> {
  String _anim = 'spin1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: GestureDetector(
              onTap: () {
                setState(() {
                  if (_anim == 'spin1')
                    _anim = 'spin2';
                  else
                    _anim = 'spin1';
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 200,
                    width: 200,
                    child: FlareActor(
                      'assets/gears.flr',
                      animation: _anim,
                      isPaused: false,
                    ),
                  ),
                  Text(
                    _anim,
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  )
                ],
              ))),
    );
  }
}
