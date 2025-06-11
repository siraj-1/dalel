import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/features/auth/presintaion/widgets/custom_forgot_pass.dart';
import 'package:dalel/features/auth/presintaion/widgets/forgot_pass_image.dart';
import 'package:dalel/features/auth/presintaion/widgets/forgot_subtitle.dart';
import 'package:dalel/features/auth/presintaion/widgets/welcome_text_widget.dart';
import 'package:flutter/material.dart';

class ForgotPassViwe extends StatelessWidget {
  const ForgotPassViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 108)),
          SliverToBoxAdapter(
              child: WelcomeTextWidget(text: AppStrings.forgotPasswordPage)),
          SliverToBoxAdapter(child: SizedBox(height: 40)),
          SliverToBoxAdapter(child: SizedBox(height: 40)),
          SliverToBoxAdapter(child: ForgotpassImage()),
          SliverToBoxAdapter(child: SizedBox(height: 24)),
          SliverToBoxAdapter(child: ForgotPassSubtitle()),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomForgetPassForm(),
            ),
          )
        ],
      ),
    );
  }
}
