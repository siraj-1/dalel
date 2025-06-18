import 'package:dalel/features/auth/presintaion/auth_cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presintaion/views/forgot_pass_view.dart';
import 'package:dalel/features/auth/presintaion/views/sign_in_view.dart';
import 'package:dalel/features/auth/presintaion/views/sign_up_view.dart';
import 'package:dalel/features/home/presentation/view/about_ancient_egypt_view.dart';
import 'package:dalel/features/home/presentation/view/home_view.dart';
import 'package:dalel/features/home/presentation/view/the_about_view.dart';
import 'package:dalel/features/home/presentation/widgets/home_nav_bar_widget.dart';
import 'package:dalel/features/onBording/presntaion/view/on_bording_view.dart';
import 'package:dalel/features/splash/presntaion/view/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => const SplashView(),
  ),
  GoRoute(
    path: "/onbording",
    builder: (context, state) => const OnBording(),
  ),
  GoRoute(
    path: "/signUp",
    builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(), child: const SignUpPageview()),
  ),
  GoRoute(
    path: "/signIn",
    builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(), child: const SignInPageview()),
  ),
  GoRoute(
    path: "/forgotpass",
    builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(), child: const ForgotPassViwe()),
  ),
  GoRoute(path: "/home", builder: (context, state) => const HomeView()),
  GoRoute(
      path: "/aboutpage", builder: (context, state) => const TheAboutView()),
  GoRoute(
      path: "/aboutacientegyp",
      builder: (context, state) => const AboutAncientEgyptView()),
  GoRoute(
      path: "/homeNavBar",
      builder: (context, state) => const HomeNavBarWidget()),
]);
