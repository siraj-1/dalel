import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class HaveAnAcounte extends StatelessWidget {
  const HaveAnAcounte({super.key, this.text1, this.text2});
  final String? text1, text2;
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Text.rich(TextSpan(children: [
        TextSpan(text: text1, style: CustomTextStyles.pacifico400style12),
        TextSpan(
            text: text2,
            style: CustomTextStyles.pacifico400style12
                .copyWith(color: AppColors.lightGrey))
      ])),
    );
  }
}
