import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:volleyball_scout/src/utils/theme/custom_color.g.dart';
import 'package:volleyball_scout/src/utils/theme/theme.dart';
import 'src/routes/go_router_provider.dart';
import 'src/utils/theme/color_schemes.g.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
        ColorScheme lightScheme;
        ColorScheme darkScheme;

        lightScheme = lightColorScheme;
        darkScheme = darkColorScheme;

        return MaterialApp(
          theme: ThemeData(
            useMaterial3: true,
            colorScheme: lightScheme,
            textTheme: lightTheme,
            extensions: [lightCustomColors],
          ),
          darkTheme: ThemeData(
            useMaterial3: true,
            colorScheme: darkScheme,
            textTheme: darkTheme,
            extensions: [darkCustomColors],
          ),
          themeMode: ThemeMode.system,
          home: const MyAppRouter(),
        );
      },
    );
  }
}
