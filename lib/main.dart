import 'package:feed_screen/blog_post.dart';
import 'package:feed_screen/chat_screen.dart';
import 'package:feed_screen/compose.dart';
import 'package:feed_screen/congratulations_screen.dart';
import 'package:feed_screen/expenses.dart';
import 'package:feed_screen/home_screen.dart';
import 'package:feed_screen/insights.dart';
import 'package:feed_screen/landing_screen.dart';
import 'package:feed_screen/login_screen.dart';
import 'package:feed_screen/rate_app.dart';
import 'package:feed_screen/user_options.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:feed_screen/signup_screen.dart';

void main() {
  runApp(MyApp());
}

final _router = GoRouter(
  routes: [
    GoRoute(
        path: '/',
        routes: [
          GoRoute(
              path: 'loginScreen',
              builder: (BuildContext context, GoRouterState state) {
                return LoginScreen();
              }),
          GoRoute(
              path: 'signupScreen',
              builder: (BuildContext context, GoRouterState state) {
                return SignupScreen();
              }),
        ],
        builder: (BuildContext context, GoRouterState state) {
          return LandingScreen();
        }),
    GoRoute(
        path: '/homeScreen',
        builder: (BuildContext context, GoRouterState state) {
          return HomeScreen();
        }),
    GoRoute(
        path: '/congratulationScreen',
        builder: (BuildContext context, GoRouterState state) {
          return CongratulationScreen();
        }),
    GoRoute(
        path: '/rateAppScreen',
        builder: (BuildContext context, GoRouterState state) {
          return RateAppScreen();
        }),
    GoRoute(
        path: '/blogPostScreen',
        builder: (BuildContext context, GoRouterState state) {
          return BlogPostWidget();
        }),
    GoRoute(
        path: '/composeScreen',
        builder: (BuildContext context, GoRouterState state) {
          return ComposeScreen();
        }),
    GoRoute(
        path: '/expenseScreen',
        builder: (BuildContext context, GoRouterState state) {
          return ExpenseScreen();
        }),
    GoRoute(
        path: '/insightScreen',
        builder: (BuildContext context, GoRouterState state) {
          return InsightScreen();
        }),
    GoRoute(
        path: '/userOptionsScreen',
        builder: (BuildContext context, GoRouterState state) {
          return UserOptionsScreen();
        }),
    GoRoute(
        path: '/chatScreen',
        builder: (BuildContext context, GoRouterState state) {
          return ChatScreen();
        }),
  ],
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Feed Screen',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 93, 176, 117)),
      ),
    );
  }
}
