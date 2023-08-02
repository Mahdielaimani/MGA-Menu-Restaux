// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

class MenuModel {
  final String id, name, description;
  final bool status;
  MenuModel({
    required this.name,
    required this.description,
    required this.status,
  }) : id = Uuid().v4();

  factory MenuModel.fromJson(Map<String, dynamic> json) {
    return MenuModel(
      name: json["name"] as String,
      description: json["description"] as String,
      status: json["status"] as bool,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "description": description,
      "status": status,
    };
  }

  MenuModel copyWith({
    final String? id,
    final String? name,
    final DateFormat? lastupdate,
    final bool? status,
  }) {
    return MenuModel(
      name: name ?? this.name,
      description: description ?? this.description,
      status: status ?? this.status,
    );
  }
}
