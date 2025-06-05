import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/features/auth/presintaion/widgets/custom_check_box.dart';
import 'package:flutter/material.dart';

class TermsAndconfditions extends StatelessWidget {
  const TermsAndconfditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomCheckBox(),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: AppStrings.iHaveAgreeToOur,
              style: CustomTextStyles.pacifico400style12),
          TextSpan(
              text: AppStrings.termsAndCondition,
              style: CustomTextStyles.pacifico400style12
                  .copyWith(decoration: TextDecoration.underline)),
        ]))
      ],
    );
  }
}
