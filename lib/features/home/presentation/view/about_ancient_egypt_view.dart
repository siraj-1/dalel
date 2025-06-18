import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/features/home/presentation/widgets/home_secitons.dart/about_egyp_section.dart';
import 'package:dalel/features/home/presentation/widgets/home_secitons.dart/ancient_egypt_war_section.dart';
import 'package:dalel/features/home/presentation/widgets/home_secitons.dart/home__app_bar_section.dart';
import 'package:dalel/features/home/presentation/widgets/home_secitons.dart/recommendations_section.dart';
import 'package:flutter/material.dart';

class AboutAncientEgyptView extends StatelessWidget {
  const AboutAncientEgyptView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: HomeAppBarSections()),
            SliverToBoxAdapter(
                child: AboutEgyptSection(
                    text: AppStrings.aboutView,
                    image: 'assets/images/bigp.png')),
            SliverToBoxAdapter(child: SizedBox(height: 49)),
            SliverToBoxAdapter(child: AncientEgyptWarsSection()),
            SliverToBoxAdapter(child: SizedBox(height: 24)),
            SliverToBoxAdapter(child: RecommendationsSection())
          ],
        ),
      ),
    );
  }
}
