import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:menu_restaux/core/logic/bloc/menu_event.dart';

import '../../../data/api/api.dart';
import 'menu_state.dart';

class MenuBloc extends Bloc<MenuEvent, MenuState> {
  final MenuApi menuApi;
  MenuBloc(this.menuApi) : super(InitialMenuState()) {
    ///GET DATA
    on<GetMenuEvent>((event, emit) async {
      emit(LoadingMenuState());
      final defaultList = await menuApi.getAllMenu();

      defaultList.isEmpty
          ? emit(FailedMenuState(message: "List is Empty"))
          : emit(SuccessMenuState(listMenu: defaultList));
    });

    /// Create Menu
    on<CreateMenuEvent>((event, emit) async {
      emit(LoadingMenuState());

      final result =
          await menuApi.addMenu(event.name, event.description, event.status);
      if (result) {
        final newList = await menuApi.getAllMenu();
        emit(SuccessMenuState(listMenu: newList));
      } else {
        emit(FailedMenuState(message: "Menu has not updated."));
      }
    });
    on<UpdateMenuEvent>((event, emit) async {
      emit(LoadingMenuState());

      final result = await menuApi.updateStatusMenu(event.name, event.status);

      if (result) {
        final newList = await menuApi.getAllMenu();
        emit(SuccessMenuState(listMenu: newList));
      } else {
        emit(FailedMenuState(message: "Menu has not updated."));
      }
    });
  }
}
