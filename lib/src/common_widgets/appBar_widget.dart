import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:volleyball_scout/src/constants/named_route.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.add_alert),
        tooltip: 'Show Snackbar',
        onPressed: () {
          context.goNamed(home);
        },
      ),
      title: const Text("Volleyball Scout"),
      actions: <Widget>[
        const SizedBox(width: 10),
        ElevatedButton(
          onPressed: () {
            // Navigate to Screen 1
            context.go('/screen1');
          },
          child: Text('1'),
        ),
        const SizedBox(width: 10),
        ElevatedButton(
          onPressed: () {
            // Navigate to Screen 2
            context.go('/screen2');
          },
          child: Text('2'),
        ),
        const SizedBox(width: 10),
        ElevatedButton(
          onPressed: () {
            // Navigate to Screen 3
            context.go('/screen3');
          },
          child: Text('3'),
        ),
        const SizedBox(width: 10),
        OutlinedButton(
          onPressed: () {
            // Navigate to Home
            context.go('/profile');
          },
          child: const Text('Login'),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
