import 'package:flutter/material.dart';

class MatcheDetailScreen extends StatefulWidget {
  const MatcheDetailScreen({super.key});

  static const String route = '/Matches';

  @override
  State<MatcheDetailScreen> createState() => _MatcheDetailScreenState();
}

class _MatcheDetailScreenState extends State<MatcheDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: Center(
        child: Column(
          children: [
            Text('Matche Detail Screen'),
          ],
        ),
      ),
    );
  }
}
