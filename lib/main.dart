import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:timealert_schedule_manager/core/theme/app_theme.dart';
import 'package:timealert_schedule_manager/screens/add_schedule_screen.dart';
import 'package:timealert_schedule_manager/screens/alam_screen.dart';
import 'package:timealert_schedule_manager/screens/login_screen.dart';
import 'package:timealert_schedule_manager/screens/set_screen.dart';

void main() => runApp(AlamApp());

class AlamApp extends StatelessWidget{
  const AlamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}

final GoRouter router = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(path: '/login', builder: (context, state) => LoginScreen()),
    GoRoute(path: '/alam', builder: (context, state) => AlamScreen()),
    GoRoute(path: '/set', builder: (context, state) => SetScreen()),
    GoRoute(path: '/add', builder: (context,state) => AddScheduleScreen())
  ]
);