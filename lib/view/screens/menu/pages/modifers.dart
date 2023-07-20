import 'package:flutter/material.dart';

class Modifers extends StatefulWidget {
  const Modifers({super.key});

  @override
  State<Modifers> createState() => _ModifersState();
}

class _ModifersState extends State<Modifers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Text(
          'Screen',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
