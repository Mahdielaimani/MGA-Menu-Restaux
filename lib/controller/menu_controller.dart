import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../model/menuitem.dart';

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
    MenuItem menuItem = MenuItem(
      title: title,
      content: content,
      dateTimeEdited: DateFormat("MMM dd, yyyy  HH:mm").format(DateTime.now()),
      dateTimeCreated: DateFormat("MMM dd, yyyy HH:mm").format(DateTime.now()),
    );
  }

  void deleteMenuItem(int id) async {
    MenuItem menuItem = MenuItem(
      id: id,
    );

    void updateMenuItem(int id, String dTCreated) async {
      final title = titleController.text;
      final content = contentController.text;
      MenuItem menuItem = MenuItem(
        id: id,
        title: title,
        content: content,
        dateTimeEdited: DateFormat("MMM dd, yyyy HH:mm").format(DateTime.now()),
        dateTimeCreated: dTCreated,
      );
    }
  }
}
