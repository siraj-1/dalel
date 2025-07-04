import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/core/widgets/custom_header_text.dart';
import 'package:flutter/material.dart';

class AboutEgyptSection extends StatelessWidget {
  const AboutEgyptSection({super.key, required this.text, required this.image});
  final String text;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomHeaderText(text: AppStrings.aboutAncientEgypt),
        const SizedBox(height: 47),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  right: 80,
                  bottom: 140,
                  child: Image.asset(Assets.pyramid),
                ),
                SizedBox(
                  height: 220,
                  width: 196,
                  child: Text(
                    text,
                    style: CustomTextStyles.poppins400style20
                        .copyWith(color: AppColors.black, fontSize: 16),
                  ),
                ),
              ],
            ),
            SizedBox(height: 203, width: 131, child: Image.asset(image)),
          ],
        ),
      ],
    );
  }
}
