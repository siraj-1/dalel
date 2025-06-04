import 'package:dalel/core/functions/CoustomNavigation.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/core/widgets/custom_btn.dart';
import 'package:dalel/features/onBording/data/on_boardign_modal.dart';
import 'package:flutter/material.dart';

class GetButton extends StatelessWidget {
  const GetButton(
      {super.key, required this.currentIndex, required this.controller});
  final int currentIndex;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    if (currentIndex == onBoardignData.length - 1) {
      return Column(
        children: [
          CustomBtn(
            text: AppStrings.createAccount,
            onPressed: () {
              customReplacementNavigate(context, "/signUp");
            },
          ),
          const SizedBox(height: 16),
          GestureDetector(
            child: Text(AppStrings.loginNow,
                style: CustomTextStyles.poppins300style16
                    .copyWith(fontWeight: FontWeight.w400)),
            onTap: () {
              customReplacementNavigate(context, "/signIn");
            },
          )
        ],
      );
    } else {
      return CustomBtn(
        text: AppStrings.next,
        onPressed: () {
          controller.nextPage(
            duration: const Duration(milliseconds: 200),
            curve: Curves.bounceIn,
          );
        },
      );
    }
  }
}
