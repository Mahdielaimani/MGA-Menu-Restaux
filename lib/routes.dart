import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'packages/packages.dart';
import 'view/screens/menu/components/pack_components.dart';
import 'view/screens/packages_screens.dart';
import 'view/screens/payment/payment_system_screen.dart.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    name: 'loginScreen',
    builder: (context, state) => LoginScreen(),
  ),
  GoRoute(
    path: '/dashboardScreen',
    name: 'dashboardScreen',
    builder: (context, state) => DashboardScreen(),
  ),
  GoRoute(
    path: '/reportsScreen',
    name: 'reportsScreen',
    builder: (context, state) => ReportsScreen(),
  ),
  GoRoute(
    path: '/recommendsScreen',
    name: 'recommendsScreen',
    builder: (context, state) => RecommendScreen(),
  ),
  GoRoute(
    path: '/customersScreen',
    name: 'customersScreen',
    builder: (context, state) => CustomersScreen(),
  ),
  GoRoute(
    path: '/ordersScreen',
    name: 'ordersScreen',
    builder: (context, state) => OrdersScreen(),
  ),
  GoRoute(
    path: '/menuScreen',
    name: 'menuScreen',
    builder: (context, state) => MenuScreen(),
  ),
  GoRoute(
    path: '/cardMenuManagement',
    name: 'cardmenuManagement',
    builder: (context, state) => CardMenuManagement(),
  ),
  GoRoute(
    path: '/scratchMenuScreen',
    name: 'scratchMenuScreen',
    builder: (context, state) => ScratchMenuScreen(),
  ),
  GoRoute(
    path: '/addsection',
    name: 'addsection',
    builder: (context, state) => SectionContainer(
      hideSectionContainer: (BuildContext) {},
      onSaveSectionData: (String name, String description, String note) {},
    ),
  ),
  GoRoute(
    path: '/feedbacksScreen',
    name: 'feedbacksScreen',
    builder: (context, state) => FeedbacksScreen(),
  ),
  GoRoute(
    path: '/translationScreen',
    name: 'translationScreen',
    builder: (context, state) => TranslationScreen(),
  ),
  GoRoute(
    path: '/venuesettingsScreen',
    name: 'venuesettingsScreen',
    builder: (context, state) => VenueSeetingsScreen(),
  ),
  GoRoute(
    path: '/paymentSystemScreen',
    name: 'paymentSystemScreen',
    builder: (context, state) => PaymentSystem(),
  ),
]);
