import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:volleyball_scout/src/common_widgets/helloWorld_%20widget.dart';
import 'package:volleyball_scout/src/constants/named_route.dart';
import 'package:volleyball_scout/src/features/dashboard/presentation/controller/bottom_navigation_bar.dart';

class Screen2 extends ConsumerWidget {
  const Screen2({Key? key});

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
      ),
      body: Column(
        children: [
          Center(child: HelloWorld()),
          ElevatedButton(
            onPressed: () {
              // Navigate to Screen2
              GoRouter.of(context).goNamed(home);
            },
            child: Text('Go to Home'),
          )
        ],
      ),
    );
  }
}
