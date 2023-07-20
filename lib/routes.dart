import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'packages/packages.dart';
import 'view/screens/menu/components/pack_components.dart';
import 'view/screens/packages_screens.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final router =
    GoRouter(initialLocation: '/', navigatorKey: _rootNavigatorKey, routes: [
  GoRoute(
    path: '/',
    name: 'loginscreen',
    builder: (context, state) => LoginScreen(),
  ),
  GoRoute(
    path:
        '/menuscreen', // Make sure the path here matches the one in GoRouter.go
    name: 'menuscreen',
    builder: (context, state) => MenuScreen(),
  ),
  GoRoute(
    path: '/cardMenuManagement',
    name: 'cardmenuManagement',
    // parentNavigatorKey: _rootNavigatorKey,
    builder: (context, state) => CardMenuManagement(),
  ),
  GoRoute(
    path: '/scratchMenuscreen',
    name: 'scratchMenuscreen',
    // parentNavigatorKey: _rootNavigatorKey,
    builder: (context, state) => ScratchMenuScreen(),
  ),
  GoRoute(
    path: '/addsection',
    name: 'addSectionscreen',
    // parentNavigatorKey: _rootNavigatorKey,
    builder: (context, state) => SectionContainer(
      hideSectionContainer: (BuildContext) {},
    ),
  ),
  GoRoute(
    path: '/customersscreen',
    name: 'customersscreen',
    // parentNavigatorKey: _rootNavigatorKey,
    builder: (context, state) => CustomersScreen(),
  )
]);
