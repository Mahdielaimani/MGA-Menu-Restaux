import 'package:flutter/material.dart';

class Archive extends StatefulWidget {
  @override
  _ArchiveState createState() => _ArchiveState();
}

class _ArchiveState extends State<Archive> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // Modify the containe properties as needed

      color: Colors.deepPurple, // Set the background color of the container
      child: Center(
        child: Text(
          'Archive Screen',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
