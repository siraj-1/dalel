import 'package:dalel/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class ForgotpassImage extends StatelessWidget {
  const ForgotpassImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      width: 235,
      child: Image.asset(Assets.imagesPassword),
    );
  }
}
