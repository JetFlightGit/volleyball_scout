import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:volleyball_scout/src/common_widgets/counter_widget.dart';
import 'package:volleyball_scout/src/constants/named_route.dart';
import 'package:volleyball_scout/src/features/dashboard/presentation/controller/bottom_navigation_bar.dart';

class Screen1 extends ConsumerWidget {
  const Screen1({Key? key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            onTap(context, ref);
          },
        ),
        title: const Text('Counter'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(child: CounterWidget()),
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).goNamed(home);
            },
            child: Text('Go to Home'),
          )
        ],
      ),
    );
  }
}
