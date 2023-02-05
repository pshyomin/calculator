import 'package:calculator/utils/calculator_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'utils/router_manager.dart';

void main() {
  Bloc.observer = CalculatorObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.dark);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (context, ThemeMode currentMode, _) {
        return MaterialApp.router(
          title: '계산기',
          theme: ThemeData(
            primarySwatch: Colors.orange,
          ),
          darkTheme: ThemeData.dark(),
          themeMode: currentMode,
          routerConfig: RouterManager.routerConfig(),
        );
      },
    );
  }
}
