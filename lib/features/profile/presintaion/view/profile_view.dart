import 'package:dalel/features/profile/widgets/custom_profile_header.dart';
import 'package:dalel/features/profile/widgets/profile_settings_page.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 64)),
          SliverToBoxAdapter(child: CustomProfileHeader()),
          SliverFillRemaining(hasScrollBody: true, child: ProfileSettingsPage())
        ],
      ),
    ));
  }
}
