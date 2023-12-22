import 'package:flutter/material.dart';

class SeriesDetailScreen extends StatefulWidget {
  const SeriesDetailScreen({super.key});

  static const String route = 'Matches';

  @override
  State<SeriesDetailScreen> createState() => SeriesDetailScreenState();
}

class SeriesDetailScreenState extends State<SeriesDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Series Detail Screen'),
          ],
        ),
      ),
    );
  }
}
