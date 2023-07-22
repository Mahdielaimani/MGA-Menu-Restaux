import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';

import '../../model/menu.dart';

final locale = GetStorage();

class MenuApi {
  Future<List<MenuModel>> getAllMenu() async {
    try {
      final data = await locale.read("menus");

      if (data != null) {
        final List<dynamic> json = jsonDecode(data);

        return json.map((map) => MenuModel.fromJson(map)).toList();
      }

      return [];
    } catch (e) {
      debugPrint("Error: $e");
      return [];
    }
  }

  Future<bool> addMenu(
    String name,
    String description,
    bool status,
  ) async {
    try {
      await Future.delayed(const Duration(seconds: 2));

      final List<MenuModel> oldList = List.of(await getAllMenu());

      oldList.add(MenuModel(
        name: name,
        description: description,
        status: status,
      ));

      await locale.write(
          "menus", jsonEncode(oldList.map((model) => model.toJson()).toList()));

      return true;
    } catch (e) {
      debugPrint("Error create: $e");
      return false;
    }
  }

  Future<bool> updateStatusMenu(String name, bool status) async {
    try {
      final List<MenuModel> oldList = List.of(await getAllMenu());

      ///GET INDEX MENU FROM LIST
      final int indexMenu = oldList.indexWhere((model) => model.name == name);

      ///GET MENU MODEL
      final menu = oldList.singleWhere((model) => model.name == name);

      ///UPDATE MENU ONLY STATUS
      oldList[indexMenu] = menu.copyWith(status: status);

      await locale.write(
          "menus", jsonEncode(oldList.map((model) => model.toJson()).toList()));

      return true;
    } catch (e) {
      debugPrint("Error remove: $e");
      return false;
    }
  }
}
