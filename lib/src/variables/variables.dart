import 'package:flutter_riverpod/flutter_riverpod.dart';

final helloWorldProvider = Provider<String>((ref) {
  return 'Hello World';
});

final counterStateProvider = StateProvider<int>((ref) {
  return 0;
});
