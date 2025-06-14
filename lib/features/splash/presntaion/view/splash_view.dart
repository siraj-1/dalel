import 'package:dalel/core/cache/cache_helper.dart';
import 'package:dalel/core/functions/coustomNavigation.dart';
import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      bool isOnBoardingVisited =
          getIt<CacheHelper>().getData(key: "isOnBoardingVisited") ?? false;
      final user = FirebaseAuth.instance.currentUser;

      if (isOnBoardingVisited == true) {
        user == null
            ? delayedNavigate(context, "/signIn")
            : user.emailVerified == true
                ? delayedNavigate(context, "/homeNavBar")
                : delayedNavigate(context, "/signIn");
      } else {
        delayedNavigate(context, "/onbording");
      }
    });
    super.initState();
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

void delayedNavigate(context, path) {
  Future.delayed(const Duration(seconds: 2), () {
    customReplacementNavigate(context, path);
  });
}
