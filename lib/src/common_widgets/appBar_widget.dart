import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('This is a snackbar')),
          );
        },
      ),
      title: const Text("Volleyball Scout"),
      actions: <Widget>[
        const SizedBox(width: 10),
        ElevatedButton(
          onPressed: () {
            // Navigate to Screen 1
            GoRouter.of(context).go('/screen1');
          },
          child: Text('1'),
        ),
        const SizedBox(width: 10),
        ElevatedButton(
          onPressed: () {
            // Navigate to Screen 2
            GoRouter.of(context).go('/screen2');
          },
          child: Text('2'),
        ),
        const SizedBox(width: 10),
        ElevatedButton(
          onPressed: () {
            // Navigate to Screen 3
            GoRouter.of(context).go('/screen3');
          },
          child: Text('3'),
        ),
        const SizedBox(width: 10),
        OutlinedButton(
          onPressed: () {
            // Navigate to Home
            GoRouter.of(context).go('/');
          },
          child: const Text('Login'),
        ),
      ],
    );
  }
}
