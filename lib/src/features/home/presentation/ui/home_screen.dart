import 'package:flutter/material.dart';
import 'package:volleyball_scout/src/common_widgets/appBar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Center(
        child: Column(
          children: const [Text('Home Screen')],
        ),
      ),
    );
  }
}
