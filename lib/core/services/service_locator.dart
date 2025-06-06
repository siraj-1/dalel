import 'package:dalel/core/cache/cache_helper.dart';
import 'package:dalel/features/auth/presintaion/auth_cubit/auth_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  // Ensure CacheHelper is initialized before registration is completed
  getIt.registerSingletonAsync<CacheHelper>(() async {
    final helper = CacheHelper();
    await helper.init(); // Make sure this initializes sharedPreferences
    return helper;
  });

  // AuthCubit depends on ready CacheHelper (if so, delay registration)
  getIt.registerSingletonWithDependencies<AuthCubit>(
    () => AuthCubit(),
    dependsOn: [CacheHelper],
  );

  // Wait for all async singletons to complete
  await getIt.allReady();
}
