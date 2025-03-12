import 'package:flutter/material.dart';
import 'package:Dalel/core/utils/app_assets.dart';

void main() {
  runApp(const Dalel());
}

class Dalel extends StatelessWidget {
  const Dalel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Image.asset(Assets.imagesOnbording1),
        ),
      ),
    );
  }
}
