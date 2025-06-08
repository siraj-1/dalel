import 'package:dalel/core/functions/CoustomNavigation.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/features/auth/presintaion/widgets/custom_signup_filed.dart';
import 'package:dalel/features/auth/presintaion/widgets/have_accout_widget.dart';
import 'package:dalel/features/auth/presintaion/widgets/welcome_text_widget.dart';
import 'package:flutter/material.dart';

class SignUpPageview extends StatelessWidget {
  const SignUpPageview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: SizedBox(height: 152)),
            const SliverToBoxAdapter(
                child: WelcomeTextWidget(text: AppStrings.welcome)),
            const SliverToBoxAdapter(child: SizedBox(height: 16)),
            const SliverToBoxAdapter(child: CustomSignForm()),
            const SliverToBoxAdapter(child: SizedBox(height: 40)),
            SliverToBoxAdapter(
              child: HaveAnAcounte(
                ontap: () {
                  customReplacementNavigate(context, 'signIn');
                },
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
