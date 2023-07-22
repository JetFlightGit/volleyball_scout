import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:volleyball_scout/src/features/authentication/presentation/ui/ui_auth_providers.dart';
import 'package:volleyball_scout/src/features/dashboard/presentation/controller/bottom_navigation_bar.dart';

class CustomProfilScreen extends ConsumerWidget {
  const CustomProfilScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authProvider = ref.watch(authProvidersProvider);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            onTap(context, ref);
          },
        ),
      ),
      body: ProfileScreen(
        providers: authProvider,
      ),
    );
  }
}
