import 'package:dalel/features/onBording/presntaion/view/on_bording_view.dart';
import 'package:dalel/features/splash/presntaion/view/splash_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, State) => const SplashView(),
  ),
  GoRoute(
    path: "/onbording",
    builder: (context, State) => const OnBording(),
  )
]);
