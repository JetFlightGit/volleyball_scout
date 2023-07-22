import 'package:flutter/material.dart';
import 'package:volleyball_scout/src/common_widgets/appBar_widget.dart';

class TeamsScreen extends StatefulWidget {
  const TeamsScreen({super.key});

  @override
  State<TeamsScreen> createState() => _TeamsState();
}

class _TeamsState extends State<TeamsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Center(
        child: Column(
          children: const [Text('TeamsScreen')],
        ),
      ),
    );
  }
}
