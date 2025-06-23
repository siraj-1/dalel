import 'package:dalel/features/search/widgets/custom_search_bar.dart';
import 'package:dalel/features/search/widgets/recent_search_tags.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 80)),
          const SliverToBoxAdapter(child: CustomSearchBar()),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverToBoxAdapter(child: RecentSearchTags())
        ],
      ),
    ));
  }
}
