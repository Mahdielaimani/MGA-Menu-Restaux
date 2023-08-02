import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AppFunctions {
  static Future<XFile?> pickImage(BuildContext context) async {
    final file = await ImagePicker().pickImage(source: ImageSource.gallery);
    return file;
  }
}
