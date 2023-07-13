import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: 'Firestore Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              Text('Test'),
              ElevatedButton(
                  onPressed: () {
                    GoRouter.of(context).go('/home');
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
