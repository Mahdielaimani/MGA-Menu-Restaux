import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Hello',
            style: TextStyle(
              fontSize: 20,
              color: Colors.deepPurple,
            ),
          )
        ],
      ),
    );
  }
}
