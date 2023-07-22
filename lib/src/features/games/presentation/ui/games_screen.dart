import 'package:flutter/material.dart';
import 'package:volleyball_scout/src/common_widgets/appBar_widget.dart';

class Games extends StatefulWidget {
  const Games({super.key});

  @override
  State<Games> createState() => _GamesState();
}

class _GamesState extends State<Games> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Center(
        child: Column(
          children: const [Text('Games Screen')],
        ),
      ),
    );
  }
}
