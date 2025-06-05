import 'package:dalel/core/cache/cache_helper.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  getIt.registerSingletonAsync<CacheHelper>(() async {
    final helper = CacheHelper();
    await helper.init(); //  Makes sure it's ready
    return helper;
  });

  await getIt.allReady(); //  Makes sure everything is fully initialized
}
