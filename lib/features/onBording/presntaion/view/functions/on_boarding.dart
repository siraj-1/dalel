import 'package:dalel/core/cache/cache_helper.dart';
import 'package:dalel/core/services/service_locator.dart';

void isOnBoardingVisited() {
  final cache = getIt<CacheHelper>();
  cache.saveData(key: "isOnBoardingVisited", value: true);
}
