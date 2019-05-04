import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          child: FlareActor(
            'assets/gears.flr',
            animation: 'spin1',
            isPaused: false,
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((_) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => HeartScreen()));
    });
  }
}

class HeartScreen extends StatelessWidget {
  const HeartScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'Flutter + Flare',
          style: TextStyle(
            fontSize: 30.0,
          ),
          textAlign: TextAlign.center,
        ),
        Container(
          height: 100,
          width: 100,
          child: FlareActor(
            'assets/heart.flr',
            animation: 'pulse',
          ),
        )
      ],
    ));
  }
}
