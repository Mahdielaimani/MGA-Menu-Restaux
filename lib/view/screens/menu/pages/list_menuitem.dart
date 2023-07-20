import 'package:flutter/material.dart';

class ListMenuItem extends StatefulWidget {
  const ListMenuItem({super.key});

  @override
  State<ListMenuItem> createState() => _ListMenuItemState();
}

class _ListMenuItemState extends State<ListMenuItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(
        child: Text(
          'Screen',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
