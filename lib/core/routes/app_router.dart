import 'package:Dalel/features/splash/presntaion/view/splash_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, State) => const SplashView(),
  )
]);
