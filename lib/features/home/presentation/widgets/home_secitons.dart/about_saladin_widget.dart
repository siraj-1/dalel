import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_header_text.dart';
import 'package:dalel/features/home/presentation/widgets/opition_widget_item.dart';
import 'package:flutter/material.dart';

class AboutSaladin extends StatelessWidget {
  const AboutSaladin({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHeaderText(text: AppStrings.saladinwars),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HistoricalPeriodsItem(path: ""),
            HistoricalPeriodsItem(path: ""),
          ],
        )
      ],
    );
  }
}
