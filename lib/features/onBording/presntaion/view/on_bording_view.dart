import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/features/onBording/presntaion/widgets/on_bording_widget_body';
import 'package:flutter/material.dart';

class OnBording extends StatefulWidget {
  const OnBording({super.key});

  @override
  State<OnBording> createState() => _OnBordingState();
}

class _OnBordingState extends State<OnBording> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Text(AppStrings.skip),
            Expanded(child: OnBordingWidgetBody()),
          ],
        ),
      ),
    );
  }
}
