import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:volleyball_scout/src/constants/named_route.dart';
import 'package:volleyball_scout/src/features/dashboard/presentation/controller/dashboard_controller.dart';

void onTap(BuildContext context, WidgetRef ref) {
  final index = ref.watch(dashboardControllerProvider);
  switch (index) {
    case 0:
      context.goNamed(games);
      break;

    case 1:
      context.goNamed(home);
      break;

    case 2:
      context.goNamed(teams);
      break;

    default:
  }
}
