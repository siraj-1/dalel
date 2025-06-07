import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/features/auth/presintaion/widgets/custom_signup_filed.dart';
import 'package:dalel/features/auth/presintaion/widgets/have_accout_widget.dart';
import 'package:dalel/features/auth/presintaion/widgets/welcome_text_widget.dart';
import 'package:flutter/material.dart';

class SignUpPageview extends StatelessWidget {
  const SignUpPageview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 152)),
            SliverToBoxAdapter(
                child: WelcomeTextWidget(text: AppStrings.welcome)),
            SliverToBoxAdapter(child: SizedBox(height: 16)),
            SliverToBoxAdapter(child: CustomSignForm()),
            SliverToBoxAdapter(child: SizedBox(height: 40)),
            SliverToBoxAdapter(
              child: HaveAnAcounte(
                text1: AppStrings.alreadyHaveAnAccount,
                text2: AppStrings.signIn,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
