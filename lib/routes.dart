import 'dart:js';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'packages/packages.dart';
import 'view/screens/menu/components/pack_components.dart';
import 'view/screens/packages_screens.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    name: 'loginscreen',
    builder: (context, state) => LoginScreen(),
  ),
  GoRoute(
    path: '/menuscreen',
    name: 'menuscreen',
    builder: (context, state) => MenuScreen(),
  ),
  GoRoute(
    path: '/cardMenuManagement',
    name: 'cardmenuManagement',
    builder: (context, state) => CardMenuManagement(),
  ),
  GoRoute(
    path: '/scratchMenuscreen',
    name: 'scratchMenuscreen',
    builder: (context, state) => ScratchMenuScreen(),
  ),
  GoRoute(
    path: '/addsection',
    name: 'addSectionscreen',
    builder: (context, state) => SectionContainer(
      hideSectionContainer: (BuildContext) {},
    ),
  ),
  GoRoute(
    path: '/customersscreen',
    name: 'customersscreen',
    builder: (context, state) => CustomersScreen(),
  ),
  GoRoute(
    path: '/ordersscreen',
    name: 'ordersscreen',
    builder: (context, state) => OrdersScreen(),
  )
]);
