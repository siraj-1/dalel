import 'package:dalel/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import '../widgets/on_bording_widget_body';

class OnBording extends StatefulWidget {
  const OnBording({super.key});

  @override
  State<OnBording> createState() => _OnBordingState();
}

class _OnBordingState extends State<OnBording> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text(AppStrings.skip),
            OnBordingWidgetBody(),
          ],
        ),
      ),
    );
  }
}
