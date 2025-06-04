import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/features/onBording/data/on_boardign_modal.dart';
import 'package:dalel/features/onBording/presntaion/widgets/custom_smooth_page_indecator';
import 'package:flutter/widgets.dart';

class OnBordingWidgetBody extends StatelessWidget {
  const OnBordingWidgetBody({
    super.key,
    required this.controller,
    this.onPageChangged,
  });

  final PageController controller;
  final Function(int)? onPageChangged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        physics: const BouncingScrollPhysics(),
        controller: controller,
        itemCount: onBoardignData.length,
        onPageChanged:
            onPageChangged, // This line was missing — needed for `onPageChangged` to work
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 290,
                width: 343,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(onBoardignData[index].imagePath),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              CustomSmoothPageIndicator(controller: controller),
              const SizedBox(height: 32),
              Text(
                onBoardignData[index].title,
                style: CustomTextStyles.poppins500style24.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 16),
              Text(
                onBoardignData[index].subtitle,
                style: CustomTextStyles.poppins300style16,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          );
        },
      ),
    );
  }
}
