part of '../../../../../packages/packages.dart';

abstract class MenuState {}

class InitialMenuState extends MenuState {}

class LoadingMenuState extends MenuState {}

class FailedMenuState extends MenuState {
  final String? message;
  FailedMenuState({this.message});
}

class SuccessMenuState extends MenuState {
  final List<MenuModel> listMenu;
  SuccessMenuState({required this.listMenu});
}
