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
          onPressed: () {
            context.pushNamed(sidebar);
          },
          icon: Icon(Icons.menu)),
      actions: <Widget>[
        const SizedBox(width: 10),
        ElevatedButton(
          onPressed: () {
            // Navigate to Screen 1
            context.goNamed(screen1);
          },
          child: Text('1'),
        ),
        const SizedBox(width: 10),
        ElevatedButton(
          onPressed: () {
            // Navigate to Screen 2
            context.goNamed(screen2);
          },
          child: Text('2'),
        ),
        const SizedBox(width: 10),
        ElevatedButton(
          onPressed: () {
            // Navigate to Screen 3
            context.goNamed(screen3);
          },
          child: Text('3'),
        ),
        const SizedBox(width: 10),
        OutlinedButton(
          onPressed: () {
            // Navigate to Profil
            context.goNamed(profile);
          },
          child: const Text('Login'),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
