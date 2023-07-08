// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:menu_restaux/view/screens/packages_screens.dart';

// import 'view/screens/home/menumanegment.dart';

// final _rootNavigatorKey = GlobalKey<NavigatorState>();
// final _shellNavigatorKey = GlobalKey<NavigatorState>();

// final router =
//     GoRouter(initialLocation: '/', navigatorKey: _rootNavigatorKey, routes: [
//   GoRoute(
//     path: '/',
//     name: 'loginscreen',
//     // parentNavigatorKey: _rootNavigatorKey,
//     builder: (context, state) => LoginScreen(),
//   ),
//   GoRoute(
//     path: '/dashboard',
//     name: 'dashboardscreen',
//     // parentNavigatorKey: _rootNavigatorKey,
//     builder: (context, state) => DashboardPage(),
//   ),
//   GoRoute(
//     path: '/menu',
//     name: 'menupage',
//     // parentNavigatorKey: _rootNavigatorKey,
//     builder: (context, state) => MenuManagement(),
//   ),
// ]);
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:menu_restaux/view/screens/home/pages/modidiers_page.dart';
import 'package:menu_restaux/view/screens/packages_screens.dart';

import 'view/screens/home/menumanegment.dart';
import 'view/screens/home/pages/archive_page.dart';
import 'view/screens/home/pages/promocode_page.dart';
import 'view/screens/home/pages/promotions.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final router =
    GoRouter(initialLocation: '/', navigatorKey: _rootNavigatorKey, routes: [
  GoRoute(
    path: '/',
    name: 'loginscreen',
    // parentNavigatorKey: _rootNavigatorKey,
    builder: (context, state) => LoginScreen(),
  ),
  GoRoute(
    path: '/dashboard',
    name: 'dashboardscreen',
    // parentNavigatorKey: _rootNavigatorKey,
    builder: (context, state) => DashboardPage(),
  ),
  GoRoute(
    path: '/menu',
    name: 'menupage',
    // parentNavigatorKey: _rootNavigatorKey,
    builder: (context, state) => MenuManagement(),
  ),
  GoRoute(
    path: '/modifer',
    name: 'modifersscreen',
    // parentNavigatorKey: _rootNavigatorKey,
    builder: (context, state) => Modifiers(),
  ),
  GoRoute(
    path: '/archive',
    name: 'archivescreen',
    // parentNavigatorKey: _rootNavigatorKey,
    builder: (context, state) => Archive(),
  ),
  GoRoute(
    path: '/promocodes',
    name: 'promocodesscreen',
    // parentNavigatorKey: _rootNavigatorKey,
    builder: (context, state) => PromoCodes(),
  ),
  GoRoute(
    path: '/promotions',
    name: 'promotionsscreen',
    // parentNavigatorKey: _rootNavigatorKey,
    builder: (context, state) => Promotions(),
  ),
]);
