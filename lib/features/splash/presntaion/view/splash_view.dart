import 'package:dalel/core/cache/cache_helper.dart';
import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final bool isOnBoardingVisited =
          getIt<CacheHelper>().getData(key: "isOnBoardingVisited") ?? false;
      final user = FirebaseAuth.instance.currentUser;

      if (isOnBoardingVisited) {
        if (user!.emailVerified) {
          _delayedNavigate("/homeNavBar");
        } else {
          _delayedNavigate("/signIn");
        }
      } else {
        _delayedNavigate("/onbording");
      }
    });
  }

  void _delayedNavigate(String path) {
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) context.go(path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppStrings.appName,
          style: CustomTextStyles.pacifico400style64,
        ),
      ),
    );
  }
}
