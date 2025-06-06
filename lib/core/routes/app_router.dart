import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/features/auth/presintaion/auth_cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presintaion/views/sign_in_view.dart';
import 'package:dalel/features/auth/presintaion/views/sign_up_view.dart';
import 'package:dalel/features/onBording/presntaion/view/on_bording_view.dart';
import 'package:dalel/features/splash/presntaion/view/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    builder: (context, State) => BlocProvider(
        create: (context) => getIt<AuthCubit>(), child: SignUpPageview()),
  ),
  GoRoute(
    path: "/signIn",
    builder: (context, State) => BlocProvider(
        create: (context) => getIt<AuthCubit>(), child: signInPageview()),
  )
]);
