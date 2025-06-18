import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_header_text.dart';
import 'package:dalel/features/home/presentation/widgets/custom_category_list_view.dart';
import 'package:flutter/material.dart';

class RecommendationsSection extends StatelessWidget {
  const RecommendationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHeaderText(text: AppStrings.recommendations),
        SizedBox(height: 16),
        CustomCategoryListView(),
      ],
    );
  }
}
