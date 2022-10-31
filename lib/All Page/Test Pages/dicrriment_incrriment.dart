import 'package:flutter/material.dart';

class Dicrriment_Incrriment extends StatefulWidget {
  const Dicrriment_Incrriment({Key? key}) : super(key: key);

  @override
  _Dicrriment_IncrrimentState createState() => _Dicrriment_IncrrimentState();
}

class _Dicrriment_IncrrimentState extends State<Dicrriment_Incrriment> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _dicrimentCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        FloatingActionButton(
                          onPressed: _dicrimentCounter,
                          tooltip: "dicriment",
                          child: Text(
                            "-",
                            style: TextStyle(fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,

                    height: 30,
                    width: 40,
                    color: Colors.red,
                    child: Text("$_counter", style:TextStyle(fontSize: 20),),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        FloatingActionButton(
                          onPressed: _incrementCounter,
                          tooltip: "increment",
                          child: Text(
                            "+",
                            style: TextStyle(fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
