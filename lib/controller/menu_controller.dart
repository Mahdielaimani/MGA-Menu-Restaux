import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../view/screens/menu/components/pack_components.dart';

class MenuItemController {
  final titleController = TextEditingController();
  final contentController = TextEditingController();

  var items = <MenuItem>[];

  @override
  void onInit() {}

  bool isEmpty() {
    if (items.length == 0)
      return true;
    else
      return false;
  }

  void addMenuItem() async {
    String title = titleController.text;
    String content = contentController.text;
    if (title.isEmpty) {
      title = "without title";
    }
    MenuItem menuItem = MenuItem();
  }

  void deleteMenuItem(int id) async {
    MenuItem menuItem = MenuItem();

    void updateMenuItem(int id, String dTCreated) async {
      final title = titleController.text;
      final content = contentController.text;
      MenuItem menuItem = MenuItem();
    }
  }
}
