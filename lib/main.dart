import 'package:dalel/app/dalel.dart';
import 'package:dalel/core/functions/check_state_changes.dart';
import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/features/auth/presintaion/auth_cubit/auth_cubit.dart';
import 'package:dalel/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await setupServiceLocator();
  checkStatechanges();

  runApp(
    BlocProvider<AuthCubit>(
      create: (context) => AuthCubit(),
      child: const Dalel(),
    ),
  );
}
