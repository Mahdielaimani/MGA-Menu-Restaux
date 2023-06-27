import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:menu_restaux/view/screens/home/dashboard.dart';
import 'package:menu_restaux/view/screens/packages_screens.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final router =
    GoRouter(initialLocation: '/', navigatorKey: _rootNavigatorKey, routes: [
  GoRoute(
    path: '/',
    name: 'loginscreen',
    // parentNavigatorKey: _rootNavigatorKey,
    builder: (context, state) => const LoginScreen(),
  ),
  GoRoute(
    path: '/menu',
    name: 'menuscreen',
    // parentNavigatorKey: _rootNavigatorKey,
    builder: (context, state) => const MenuPage(),
  ),
  GoRoute(
    path: '/dashboard',
    name: 'dashboardscreen',
    // parentNavigatorKey: _rootNavigatorKey,
    builder: (context, state) => DashboardPage(),
  ),
]);
