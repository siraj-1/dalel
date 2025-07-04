import 'package:go_router/go_router.dart';

void customNavigation(context, String path) {
  GoRouter.of(context).push(path);
}

void customReplacementNavigate(context, String path) {
  GoRouter.of(context).pushReplacement(path);
}
