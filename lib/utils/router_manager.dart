import 'package:calculator/pages/calculator.dart';
import 'package:go_router/go_router.dart';

class RouterManager {
  static GoRouter routerConfig() {
    return GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) {
            return const CalculatorPage();
          },
        ),
      ],
    );
  }
}
