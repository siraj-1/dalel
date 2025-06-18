import 'package:dalel/features/home/presentation/widgets/opition_widget_item.dart';
import 'package:flutter/material.dart';

class CustomOpitionsWidget extends StatelessWidget {
  const CustomOpitionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HistoricalPeriodsItem(path: "/aboutacientegyp"),
        HistoricalPeriodsItem(
          // need to add the new page rout
          path: "",
        ),
      ],
    );
  }
}
