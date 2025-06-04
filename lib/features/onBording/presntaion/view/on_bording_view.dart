import 'package:dalel/core/functions/CoustomNavigation.dart';
import 'package:dalel/features/onBording/presntaion/widgets/custom_nav_bar.dart';
import 'package:dalel/features/onBording/presntaion/widgets/get_buttons.dart';
import 'package:dalel/features/onBording/presntaion/widgets/onBoardingWidgetBody.dart';
import 'package:flutter/material.dart';

class OnBording extends StatefulWidget {
  const OnBording({super.key});

  @override
  State<OnBording> createState() => _OnBordingState();
}

class _OnBordingState extends State<OnBording> {
  final PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  void dispose() {
    _controller.dispose(); //  Always dispose controllers in StatefulWidget
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              const SizedBox(height: 40),
              CustomNavBar(
                ontap: () {
                  customNavigation(context, "/signUp");
                },
              ),
              OnBordingWidgetBody(
                onPageChangged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                controller: _controller,
              ),
              const SizedBox(height: 88),
              GetButton(currentIndex: currentIndex, controller: _controller),
              const SizedBox(height: 17),
            ],
          ),
        ),
      ),
    );
  }
}
