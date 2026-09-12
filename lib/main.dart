import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:timealert_schedule_manager/screens/add_schedule_screen.dart';
import 'package:timealert_schedule_manager/screens/alam_screen.dart';
import 'package:timealert_schedule_manager/screens/login_screen.dart';
import 'package:timealert_schedule_manager/screens/set_screen.dart';

void main() => runApp(Alam_App());

class Alam_App extends StatelessWidget{
  const Alam_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
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