import 'dart:async';
import 'package:boragapp/screens/start.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  double _opa = 0;

  @override
  void initState() {
    super.initState();
    new Future.delayed(Duration(milliseconds: 100), () {
      if (!mounted) return;

      this.setState(() {
        this._opa = 1;
      });
    });
    Timer(
        Duration(seconds: 4),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => StartScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xffeeeeee),
        child: AnimatedOpacity(
          opacity: this._opa,
          duration: Duration(seconds: 3),
          child: Image.asset('assets/imgs/splash.png'),
        ),
      ),
    );
  }
}
