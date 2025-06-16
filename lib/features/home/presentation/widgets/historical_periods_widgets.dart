import 'package:dalel/features/home/presentation/widgets/historical_periods_item_widget.dart';
import 'package:flutter/material.dart';

class HistoricalPeriods extends StatelessWidget {
  const HistoricalPeriods({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HistoricalPeriodsItem(),
        HistoricalPeriodsItem(),
      ],
    );
  }
}
