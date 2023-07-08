import 'package:flutter/material.dart';

import '../../core/function/functions.dart';

class TopCardIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: getSizeApp(context).width,
      decoration: BoxDecoration(
        color: Colors.white,
        // borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(width: 10),
          Icon(
            Icons.bolt_outlined,
          ),
          SizedBox(width: 10),
          Icon(
            Icons.contact_support_outlined,
          ),
          SizedBox(width: 10),
          Icon(
            Icons.notifications_none,
          ),
          SizedBox(width: 10),
          Icon(
            Icons.local_fire_department_outlined,
          ),
          SizedBox(width: 10),
          Icon(Icons.person),
        ],
      ),
    );
  }
}
