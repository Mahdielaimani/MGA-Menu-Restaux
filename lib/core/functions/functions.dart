part of '../../../packages/packages.dart';

class AppFunctions {
  List sectionList = [];
  static Future<XFile?> pickImage(BuildContext context) async {
    final file = await ImagePicker().pickImage(source: ImageSource.gallery);
    return file;
  }

  // void onSaveSectionData(String name, String description, String note) {
  //   Map<String, String> newSection = {
  //     'name': name,
  //     'description': description,
  //     'note': note,
  //   };
  //   sectionList.add(newSection);
  // }
}
