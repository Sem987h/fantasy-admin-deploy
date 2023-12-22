import 'package:fantasy_admin_internal/app/routes/app_routes_config.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: MyAppRouter().router,
      title: 'Fantasy Cult',
      theme: ThemeData(
        useMaterial3: false,
      ),
    );
  }
}
