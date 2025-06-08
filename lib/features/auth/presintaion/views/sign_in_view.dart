import 'package:dalel/core/functions/CoustomNavigation.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/features/auth/presintaion/widgets/custom_signin_filed.dart';
import 'package:dalel/features/auth/presintaion/widgets/have_accout_widget.dart';
import 'package:dalel/features/auth/presintaion/widgets/welcome_baner.dart';
import 'package:dalel/features/auth/presintaion/widgets/welcome_text_widget.dart';
import 'package:flutter/material.dart';

class SignInPageview extends StatelessWidget {
  const SignInPageview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: WelcomeBanner()),
          const SliverToBoxAdapter(child: SizedBox(height: 32)),
          const SliverToBoxAdapter(
              child: WelcomeTextWidget(text: AppStrings.welcomeBack)),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomSignInForm(),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverToBoxAdapter(
            child: HaveAnAcounte(
              text1: AppStrings.dontHaveAnAccount,
              text2: AppStrings.signUp,
              ontap: () {
                customReplacementNavigate(context, "/signUp");
              },
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
        ],
      ),
    );
  }
}
