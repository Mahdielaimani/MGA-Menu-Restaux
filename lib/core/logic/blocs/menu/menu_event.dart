// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:intl/intl.dart';

abstract class MenuEvent {}

class GetMenuEvent extends MenuEvent {}

class PostMenuEvent extends MenuEvent {}

class CreateMenuEvent extends MenuEvent {
  String name, description;
  final bool status;
  CreateMenuEvent({
    required this.name,
    required this.description,
    required this.status,
  });
}

class UpdateMenuEvent extends MenuEvent {
  final String name;
  final bool status;

  UpdateMenuEvent({required this.status, required this.name});
}
