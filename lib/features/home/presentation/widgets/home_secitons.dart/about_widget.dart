import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_header_text.dart';
import 'package:dalel/features/home/presentation/widgets/home_secitons.dart/about_peopl_widget.dart';
import 'package:flutter/material.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHeaderText(text: AppStrings.aboutsaladin),
        SizedBox(height: 21),
        AboutPeople(
          text: AppStrings.aboutnewpage,
          image: "assets/images/bigsaladi.png",
        ),
      ],
    );
  }
}
