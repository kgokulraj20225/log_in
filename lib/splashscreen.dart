// TODO Implement this library.
import 'dart:async';

import 'package:flutter/material.dart';
//import 'package:login_page/login2.dart';
import 'package:login_page/splashscreen.dart';

import 'Login_page.dart';

class First_page extends StatefulWidget {
  const First_page({super.key});

  @override
  State<First_page> createState() => _First_pageState();
}

class _First_pageState extends State<First_page> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => one())));
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: sec(),
      ),
    );
  }
}

class sec extends StatefulWidget {
  const sec({super.key});

  @override
  State<sec> createState() => _secState();
}

class _secState extends State<sec> {
  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Positioned(
        bottom: 400,
        child: Center(
          child: Container(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/sss1.png'),
              radius: 60.0,
            ),
          ),
        ),
      ),
      Positioned(bottom: 330, child: CircularProgressIndicator())
    ]);
  }
}
