import 'package:flutter/material.dart';
class Logo_Play extends StatefulWidget {
  const Logo_Play({Key? key}) : super(key: key);

  @override
  _Logo_PlayState createState() => _Logo_PlayState();
}

class _Logo_PlayState extends State<Logo_Play> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Images/Logo/logo.png")
          )
        ),
      ),
    );
  }
}
