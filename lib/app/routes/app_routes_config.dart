import 'package:fantasy_admin_internal/app.dart';
import 'package:fantasy_admin_internal/app/screens/auth_screen/login_screen.dart';
import 'package:fantasy_admin_internal/app/screens/auth_screen/otp_screen.dart';
import 'package:fantasy_admin_internal/app/screens/dashboard_screens/matches_screen.dart';
import 'package:fantasy_admin_internal/app/screens/dashboard_screens/series_screen.dart';
import 'package:fantasy_admin_internal/app/screens/dashboard_screens/users_screen.dart';
import 'package:fantasy_admin_internal/app/screens/detail_screens.dart/user_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyAppRouter {
  final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        name: "Login",
        path: "/",
        builder: (BuildContext context, GoRouterState state) {
          return const LoginScreen();
        },
      ),
      GoRoute(
        path: OtpScreen.route,
        builder: (BuildContext context, GoRouterState state) {
          return const OtpScreen();
        },
      ),
      GoRoute(
        path: App.route,
        builder: (BuildContext context, GoRouterState state) {
          return const App();
        },
      ),
      GoRoute(
        path: UsersScreen.route,
        builder: (BuildContext context, GoRouterState state) {
          return const UsersScreen();
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'detail',
            builder: (BuildContext context, GoRouterState state) {
              return const UserDetailScreen();
            },
          ),
        ],
      ),
      GoRoute(
        path: MatchesScreen.route,
        builder: (BuildContext context, GoRouterState state) {
          return const MatchesScreen();
        },
      ),
      GoRoute(
        path: SeriesScreen.route,
        builder: (BuildContext context, GoRouterState state) {
          return const SeriesScreen();
        },
      ),
    ],
  );
}
