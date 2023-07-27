import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:menu_restaux/core/logic/blocs/menu/menu_bloc.dart';
import 'package:menu_restaux/routes.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'data/api/api.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  runApp(MyApp(
    menuApi: MenuApi(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.menuApi});
  final MenuApi menuApi;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<MenuBloc>(
            create: (BuildContext context) => MenuBloc(menuApi),
          ),
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: router,
          theme: ThemeData(
            textTheme: GoogleFonts.nunitoSansTextTheme(
              Theme.of(context).textTheme,
            ),
          ),
          builder: (context, child) => ResponsiveWrapper.builder(
              ClampingScrollWrapper.builder(context, child!),
              defaultScale: true,
              breakpoints: [
                const ResponsiveBreakpoint.resize(450, name: MOBILE),
                const ResponsiveBreakpoint.autoScale(800, name: TABLET),
                const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
                const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
              ],
              breakpointsLandscape: [
                const ResponsiveBreakpoint.resize(560, name: MOBILE),
                const ResponsiveBreakpoint.autoScale(812, name: MOBILE),
                const ResponsiveBreakpoint.resize(1024, name: TABLET),
                const ResponsiveBreakpoint.resize(1120, name: TABLET),
              ]),
        ));
  }
}
