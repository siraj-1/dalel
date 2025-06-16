import 'package:dalel/features/home/presentation/widgets/custom_home_view_app_bar.dart';
import 'package:flutter/material.dart';

class HomeAppBarSections extends StatelessWidget {
  const HomeAppBarSections({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 72),
        CustomHomeViewAppBar(),
        SizedBox(height: 34)
      ],
    );
  }
}
