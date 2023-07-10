import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:my_app_name/src/features/players/data/player.dart';
// import 'package:my_app_name/src/services/firebase_service.dart';

class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
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
