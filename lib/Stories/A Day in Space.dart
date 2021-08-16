import 'package:flutter/material.dart';

class A_Day_in_Space extends StatefulWidget {
  const A_Day_in_Space({Key? key}) : super(key: key);

  @override
  _A_Day_in_SpaceState createState() => _A_Day_in_SpaceState();
}

class _A_Day_in_SpaceState extends State<A_Day_in_Space> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0.0,
        title: Text('A Day in Space'),
      ),
    );
  }
}
