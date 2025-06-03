import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/features/onBording/presntaion/widgets/custom_smooth_page_indecator';
import 'package:flutter/widgets.dart';

class OnBordingWidgetBody extends StatelessWidget {
  OnBordingWidgetBody({super.key});
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        physics: BouncingScrollPhysics(),
        controller: _controller,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 290,
                width: 343,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      Assets.imagesOnbording1,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              CustomSmoothPageIndicator(
                  controller: _controller), // Fixed parameter passing
              const SizedBox(height: 32),
              Text(
                "Explore The history with Dalel in a smart way",
                style: CustomTextStyles.poppins500style24
                    .copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 16),
              const Text(
                "Explore The history with Dalel in a smart way",
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
