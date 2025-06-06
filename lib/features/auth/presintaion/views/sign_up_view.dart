import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_btn.dart';
import 'package:dalel/features/auth/presintaion/widgets/custom_widget_filed.dart';
import 'package:dalel/features/auth/presintaion/widgets/have_accout_widget.dart';
import 'package:dalel/features/auth/presintaion/widgets/terms_and_conditions.dart';
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
            const SliverToBoxAdapter(
              child: SizedBox(height: 152),
            ),
            const SliverToBoxAdapter(
              child: WelcomeTextWidget(text: AppStrings.welcome),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 16),
            ),
            const SliverToBoxAdapter(
              child: CustomTextFiled(
                labelText: AppStrings.fristName,
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomTextFiled(
                labelText: AppStrings.lastName,
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomTextFiled(
                labelText: AppStrings.emailAddress,
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomTextFiled(
                labelText: AppStrings.password,
              ),
            ),
            const SliverToBoxAdapter(
              child: TermsAndconfditions(),
            ),
            const SliverToBoxAdapter(
                child: SizedBox(
              height: 88,
            )),
            SliverToBoxAdapter(
              child: CustomBtn(
                onPressed: () {},
                text: AppStrings.signUp,
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 40)),
            const SliverToBoxAdapter(
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
