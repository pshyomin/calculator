import 'package:calculator/cubit/calculator_cubit.dart';
import 'package:calculator/pages/calculator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RouterManager {
  static GoRouter routerConfig() {
    return GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) {
            return BlocProvider(
              create: (_) => CalculatorCubit(),
              child: const Calculator(),
            );
          },
        ),
      ],
    );
  }
}
