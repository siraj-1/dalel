import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_btn.dart';
import 'package:dalel/features/onBording/presntaion/widgets/custom_nav_bar.dart';
import 'package:dalel/features/onBording/presntaion/widgets/onBoardingWidgetBody.dart';
import 'package:flutter/material.dart';

class OnBording extends StatefulWidget {
  const OnBording({super.key});

  @override
  State<OnBording> createState() => _OnBordingState();
}

class _OnBordingState extends State<OnBording> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(children: [
            const SizedBox(
              height: 40,
            ),
            const CustomNavBar(),
            OnBordingWidgetBody(),
            SizedBox(height: 88),
            const CustomBtn(
              text: AppStrings.next,
            ),
            const SizedBox(
              height: 17,
            )
          ]),
        ),
      ),
    );
  }
}
