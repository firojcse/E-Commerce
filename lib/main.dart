import 'package:flutter/material.dart';
import 'All Page/Data File/main_home_page.dart';


void main() {
  runApp(const SuperTech());
}
class SuperTech extends StatefulWidget {
  const SuperTech({Key? key}) : super(key: key);

  @override
  _SuperTechState createState() => _SuperTechState();
}

class _SuperTechState extends State<SuperTech> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Main_Home_Page(),
    );
  }
}
