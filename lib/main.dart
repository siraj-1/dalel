import 'package:Dalel/core/routes/app_router.dart';
import 'package:Dalel/features/splash/presntaion/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:Dalel/core/utils/app_assets.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const Dalel());
}

class Dalel extends StatelessWidget {
  const Dalel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
