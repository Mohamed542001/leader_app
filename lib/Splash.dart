import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4),()=>Navigator.of(context).pushNamed('LanguageScreen'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
          child: InkWell(
            onTap: ()=>Navigator.of(context).pushNamed('LanguageScreen'),
            child: Image.asset(
              'assets/images/Leader.jpg',
              fit: BoxFit.fill,
            ),
          ),
      ),
    );
  }
}
