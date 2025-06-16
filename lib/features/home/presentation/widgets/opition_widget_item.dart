import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class HistoricalPeriodsItem extends StatelessWidget {
  const HistoricalPeriodsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
                color: AppColors.grey,
                blurRadius: 10,
                offset: const Offset(0, 7))
          ]),
      width: 164,
      height: 96,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(width: 13),
          SizedBox(
            height: 50,
            width: 70,
            child: Text(
              "Ancient Egypt",
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: CustomTextStyles.poppins500style16,
            ),
          ),
          Container(
            height: 64,
            width: 47,
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage(Assets.frame27))),
          ),
          const SizedBox(width: 16),
        ],
      ),
    );
  }
}
