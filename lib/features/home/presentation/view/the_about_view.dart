import 'package:dalel/features/home/presentation/widgets/home_secitons.dart/about_saladin_widget.dart';
import 'package:dalel/features/home/presentation/widgets/home_secitons.dart/about_widget.dart';
import 'package:dalel/features/home/presentation/widgets/home_secitons.dart/home__app_bar_section.dart';
import 'package:dalel/features/home/presentation/widgets/home_secitons.dart/recommendations_section.dart';
import 'package:flutter/material.dart';

class TheAboutView extends StatelessWidget {
  const TheAboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: HomeAppBarSections()),
            SliverToBoxAdapter(child: AboutWidget()),
            SliverToBoxAdapter(child: AboutSaladin()),
            SliverToBoxAdapter(child: SizedBox(height: 24)),
            SliverToBoxAdapter(child: RecommendationsSection())
          ],
        ),
      ),
    );
  }
}
