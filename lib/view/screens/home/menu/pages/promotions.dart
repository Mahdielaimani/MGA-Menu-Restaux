import 'package:flutter/material.dart';

class Promotions extends StatefulWidget {
  @override
  _PromotionsState createState() => _PromotionsState();
}

class _PromotionsState extends State<Promotions> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrangeAccent,
      // Modify the container properties as needed
      child: Center(
        child: Text(
          'In-app Promotions Screen',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
