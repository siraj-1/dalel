import 'package:dalel/features/home/presentation/widgets/home_secitons.dart/historical_souvenirs_section.dart';
import 'package:dalel/features/home/presentation/widgets/home_secitons.dart/home__app_bar_section.dart';
import 'package:dalel/features/home/presentation/widgets/home_secitons.dart/home_historical_character_section.dart';
import 'package:dalel/features/home/presentation/widgets/home_secitons.dart/home_historical_periods_section.dart';
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
          SliverToBoxAdapter(child: HomeAppBarSections()),
          SliverToBoxAdapter(child: HistoricalPeriodsSection()),
          SliverToBoxAdapter(child: HistoricalCharactersSections()),
          SliverToBoxAdapter(child: HistoricalSouvenirsSection())
        ],
      ),
    ));
  }
}
