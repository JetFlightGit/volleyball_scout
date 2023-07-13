import 'package:flutter/material.dart';

class TeamsScreen extends StatefulWidget {
  const TeamsScreen({super.key});

  @override
  State<TeamsScreen> createState() => _TeamsState();
}

class _TeamsState extends State<TeamsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TeamsScreen'),
      ),
      body: Center(
        child: Column(
          children: const [Text('TeamsScreen')],
        ),
      ),
    );
  }
}
