import 'dart:async';

import 'package:flutter/material.dart';

import '../home/home_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () { Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));});
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: Image.asset('assets/images/s.png',height:80,)),
    );
  }
}