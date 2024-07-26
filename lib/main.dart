import 'package:flutter/material.dart';
import 'package:login_page/splashscreen.dart';

void main() {
  runApp(log_1());
}

class log_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: First_page(),
    );
  }
}
