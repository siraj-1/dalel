import 'package:dalel/core/utils/app_strings.dart';

import 'package:dalel/core/widgets/custom_header_text.dart';
import 'package:dalel/features/home/presentation/widgets/custom_home_viw_app_bar.dart';
import 'package:dalel/features/home/presentation/widgets/historical_periods_widgets.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 72)),
          SliverToBoxAdapter(
            child: CustomHomeViewAppBar(),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 34)),
          SliverToBoxAdapter(
            child: CustomHeaderText(text: AppStrings.historicalPeriods),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverToBoxAdapter(
            child: HistoricalPeriods(),
          )
        ],
      ),
    ));
  }
}
