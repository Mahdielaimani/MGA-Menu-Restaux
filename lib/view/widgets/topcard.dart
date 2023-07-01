import 'package:flutter/material.dart';

class CustomTopCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 1127,
      decoration: BoxDecoration(
        color: Colors.white,
        // borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(width: 10),
          Icon(Icons.bolt),
          SizedBox(width: 10),
          Icon(Icons.contact_support),
          SizedBox(width: 10),
          Icon(Icons.notifications),
          SizedBox(width: 10),
          Icon(Icons.local_fire_department),
          SizedBox(width: 10),
          Icon(Icons.person),
        ],
      ),
    );
  }
}
