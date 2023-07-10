import 'package:flutter/material.dart';

class Mannschaften extends StatelessWidget {
  const Mannschaften({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Mannschaften',
        style: Theme.of(context).textTheme.displayMedium,
      ),
    );
  }
}
