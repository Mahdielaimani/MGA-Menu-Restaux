import 'package:flutter/material.dart';

class PromoCodes extends StatefulWidget {
  @override
  _PromoCodesState createState() => _PromoCodesState();
}

class _PromoCodesState extends State<PromoCodes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,

      // Modify the container properties as needed
      child: Center(
        child: Text(
          'Promo Codes Screen',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
