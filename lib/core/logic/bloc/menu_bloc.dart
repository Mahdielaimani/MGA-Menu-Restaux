import 'package:flutter_bloc/flutter_bloc.dart';
import 'menu_event.dart';
import 'menu_state.dart';

class MenuCardBloc extends Bloc<MenuCardEvent, MenuCardState> {
  MenuCardBloc() : super(MenuCardState(true));

  @override
  Stream<MenuCardState> mapEventToState(MenuCardEvent event) async* {
    if (event == MenuCardEvent.toggleStatus) {
      yield MenuCardState(!state.isActive);
    }
  }
}
