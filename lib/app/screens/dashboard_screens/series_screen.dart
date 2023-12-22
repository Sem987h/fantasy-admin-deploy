import 'package:flutter/material.dart';

class SeriesScreen extends StatefulWidget {
  const SeriesScreen({super.key});

  static const String route = '/Matches';

  @override
  State<SeriesScreen> createState() => SeriesScreenState();
}

class SeriesScreenState extends State<SeriesScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Series Screen'),
          ],
        ),
      ),
    );
  }
}
