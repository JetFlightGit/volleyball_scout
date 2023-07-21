import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:volleyball_scout/src/features/authentication/presentation/ui/ui_auth_providers.dart';

class CustomSignInScreen extends ConsumerWidget {
  const CustomSignInScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authProvider = ref.watch(authProvidersProvider);
    return Container(
      child: SignInScreen(
        providers: authProvider,
      ),
    );
  }
}
