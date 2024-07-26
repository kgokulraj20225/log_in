import 'package:flutter/material.dart';

void main() {
  runApp(one());
}

class one extends StatefulWidget {
  const one({super.key});

  @override
  State<one> createState() => _oneState();
}

class _oneState extends State<one> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: second(),
      ),
    );
  }
}

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  bool _obscureText = true;

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Stack(alignment: Alignment.bottomCenter, children: [
      Container(
        width: screenSize.width * 1.0,
        height: screenSize.height * 1.0,
        color: Color(0xff0047b3),
      ),
      Positioned(
        left: 150,
        bottom: 690,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0), // Rounded corners
          child: Image.asset(
            'assets/sss1.png', // Replace with your image URL
            width: 100.0,
            height: 100.0,
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        width: screenSize.width * 1.0,
        height: screenSize.height * 0.73,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(60))),
      ),
      Positioned(
        bottom: 530,
        child: Container(
          child: Text(
            "LogIn",
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      Positioned(
        left: 25,
        bottom: 350,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              textAlign: TextAlign.start,
              "Email",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Color(0xff0047b3)),
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 7,
                        spreadRadius: 3,
                        offset: Offset(0, 3))
                  ]),
              width: screenSize.width * 0.87,
              child: TextFormField(
                cursorColor: Color(0xff0047b3),
                autocorrect: true,
                cursorOpacityAnimates: EditableText.debugDeterministicCursor,
                onChanged: (value) {},
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 25),
                  hintText: 'Enter your Email',
                  hintStyle: TextStyle(color: Color(0xff0047b3)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                  ),
                ),
                style: TextStyle(color: Color(0xff0047b3)),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              textAlign: TextAlign.start,
              "Password",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Color(0xff0047b3)),
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 7,
                        spreadRadius: 3,
                        offset: Offset(0, 3))
                  ]),
              width: screenSize.width * 0.87,
              child: TextFormField(
                obscureText: _obscureText,
                cursorColor: Color(0xff0047b3),
                onChanged: (value) {},
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 25),
                  hintText: 'Enter your Password',
                  hintStyle: TextStyle(color: Color(0xff0047b3)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: _toggleVisibility,
                  ),
                ),
                style: TextStyle(color: Color(0xff0047b3)),
              ),
            ),
          ],
        ),
      ),
      Positioned(
        bottom: 250,
        child: Container(
            width: screenSize.width * 0.87,
            height: screenSize.height * 0.06,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                color: Color(0xff0047b3),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      blurRadius: 7,
                      spreadRadius: 3,
                      offset: Offset(0, 3))
                ]),
            child: Center(
                child: Text(
              "Login",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ))),
      ),
      Positioned(
        bottom: 190,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: screenSize.width * 0.39, // Adjust the width as needed
              child: Divider(
                color: Colors.black,
                thickness: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'Or',
                style: TextStyle(color: Color(0xff0047b3)),
              ),
            ),
            Container(
              width: screenSize.width * 0.39, // Adjust the width as needed
              child: Divider(
                color: Colors.black,
                thickness: 1,
              ),
            ),
          ],
        ),
      ),
      Positioned(
        bottom: 110,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              // Rounded corners
              child: Image.asset(
                'assets/img.png', // Replace with your image URL
                width: 50.0,
                //color: Colors.red,
                height: 50.0,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              // Rounded corners
              child: Image.asset(
                'assets/img_1.png', // Replace with your image URL
                width: 50.0,
                //color: Colors.red,
                height: 50.0,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              // Rounded corners
              child: Image.asset(
                'assets/img_2.png', // Replace with your image URL
                width: 50.0,
                //color: Colors.red,
                height: 50.0,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
      Positioned(
        bottom: 60,
        child: Row(
          children: [
            Text(
              "Don't Have Any Account?",
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              "Sign Up",
              style: TextStyle(
                  color: Color(0xff0047b3), fontWeight: FontWeight.bold),
            ),
          ],
        ),
      )
    ]);
  }
}
