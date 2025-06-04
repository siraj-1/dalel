import 'package:dalel/features/auth/presintaion/views/sign_in.dart';
import 'package:dalel/features/auth/presintaion/views/sign_up.dart';
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
    builder: (context, State) => OnBording(),
  ),
  GoRoute(
    path: "/signUp",
    builder: (context, State) => signUpPageview(),
  ),
  GoRoute(
    path: "/signIn",
    builder: (context, State) => signInPageview(),
  )
]);
