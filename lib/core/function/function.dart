// scratch_menu_functions.dart

import 'package:flutter/material.dart';

bool validateData(String data) {
  // Add your validation logic here...
  return true; // Return true if data is valid, otherwise false
}

void processData(String data) {
  // Add your data processing logic here...
}

void showAlertDialog(BuildContext context, String message) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Text(message),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('OK'),
          ),
        ],
      );
    },
  );
}
