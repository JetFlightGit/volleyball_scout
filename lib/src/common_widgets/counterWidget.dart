import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../variables/variables.dart';

class CounterWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterStateProvider);

    return ElevatedButton(
        onPressed: () => ref.read(counterStateProvider.notifier).state++,
        child: Text('Value: $counter'));
  }
}
