import 'package:flutter/material.dart';

class Modifiers extends StatefulWidget {
  @override
  _ModifiersState createState() => _ModifiersState();
}

class _ModifiersState extends State<Modifiers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // Modify the cont
      //ainer properties as needed
      color: Colors.blueAccent,
      child: Center(
        child: Text(
          'Modifiers Screen',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
