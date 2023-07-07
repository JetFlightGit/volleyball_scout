import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:volleyball_scout/src/common_widgets/helloWorldWidget.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(child: HelloWorld()),
          ElevatedButton(
            onPressed: () {
              // Navigate to Screen2
              GoRouter.of(context).go('counter');
            },
            child: Text('Go to Home'),
          )
        ],
      ),
    );
  }
}
