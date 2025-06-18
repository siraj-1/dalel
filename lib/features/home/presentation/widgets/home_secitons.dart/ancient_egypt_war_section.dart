import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_header_text.dart';
import 'package:dalel/features/home/presentation/widgets/opition_widget_item.dart';
import 'package:flutter/material.dart';

class AncientEgyptWarsSection extends StatelessWidget {
  const AncientEgyptWarsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CustomHeaderText(text: AppStrings.ancientegyptwars),
            const SizedBox(height: 16),
            Image.asset(Assets.vctor)
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // the using of thhe is not correct name historical periods item
            HistoricalPeriodsItem(path: ""),
            HistoricalPeriodsItem(path: "")
          ],
        ),
      ],
    );
  }
}
