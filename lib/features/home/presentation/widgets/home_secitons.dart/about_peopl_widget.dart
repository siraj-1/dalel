import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class AboutPeople extends StatelessWidget {
  const AboutPeople({super.key, required this.text, required this.image});
  final String text;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                  height: 240,
                  width: 210,
                  child: Text(
                    text,
                    style: CustomTextStyles.poppins400style20
                        .copyWith(color: AppColors.black, fontSize: 16),
                    maxLines: 9,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Positioned(
                  left: 45,
                  top: 50,
                  child: SizedBox(
                      height: 199,
                      width: 119,
                      child: Image.asset('assets/images/behiedshaladin.png')),
                ),
                SizedBox(height: 283, width: 160, child: Image.asset(image)),
              ],
            )
          ],
        ),
      ],
    );
  }
}
