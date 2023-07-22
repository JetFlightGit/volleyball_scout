import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:volleyball_scout/src/constants/named_route.dart';
import 'package:volleyball_scout/src/features/dashboard/presentation/controller/bottom_navigation_bar.dart';

class Screen3 extends ConsumerWidget {
  const Screen3({Key? key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      child: MaterialApp(
        title: 'Firestore Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
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
              Text('Test'),
              ElevatedButton(
                  onPressed: () {
                    GoRouter.of(context).goNamed(home);
                  },
                  child: Text(
                    'New Page',
                    style: Theme.of(context).textTheme.displayMedium,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
