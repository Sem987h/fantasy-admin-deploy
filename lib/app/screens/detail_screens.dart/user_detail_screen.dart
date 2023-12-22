import 'package:flutter/material.dart';

class UserDetailScreen extends StatefulWidget {
  const UserDetailScreen({super.key});

  static const String route = '/user_Detail';

  @override
  State<UserDetailScreen> createState() => UserDetailScreenState();
}

class UserDetailScreenState extends State<UserDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('User Detail Screen'),
          ],
        ),
      ),
    );
  }
}
