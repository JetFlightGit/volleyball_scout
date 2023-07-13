import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:volleyball_scout/src/common_widgets/counter_widget.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(child: CounterWidget()),
          ElevatedButton(
            onPressed: () {
              // Navigate to Screen2
              GoRouter.of(context).go('/');
            },
            child: Text('Go to Home'),
          )
        ],
      ),
    );
  }
}
