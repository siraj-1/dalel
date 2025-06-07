import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_btn.dart';
import 'package:dalel/features/auth/presintaion/auth_cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presintaion/auth_cubit/cubit/auth_state.dart';
import 'package:dalel/features/auth/presintaion/widgets/custom_widget_filed.dart';
import 'package:dalel/features/auth/presintaion/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSignForm extends StatelessWidget {
  const CustomSignForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Form(
            child: Column(
              children: [
                CustomTextFormFiled(
                  labelText: AppStrings.fristName,
                  onChanged: (fristName) {
                    BlocProvider.of<AuthCubit>(context).fristName = fristName;
                  },
                ),
                CustomTextFormFiled(
                  labelText: AppStrings.lastName,
                  onChanged: (lastName) {
                    BlocProvider.of<AuthCubit>(context).lastName = lastName;
                  },
                ),
                CustomTextFormFiled(
                  labelText: AppStrings.emailAddress,
                  onChanged: (emailAddress) {
                    BlocProvider.of<AuthCubit>(context).emailAddress =
                        emailAddress;
                  },
                ),
                CustomTextFormFiled(
                  labelText: AppStrings.password,
                  onChanged: (password) {
                    BlocProvider.of<AuthCubit>(context).password = password;
                  },
                ),
                const TermsAndconfditions(),
                const SizedBox(
                  height: 88,
                ),
                CustomBtn(
                  onPressed: () {
                    BlocProvider.of<AuthCubit>(context)
                        .signUpWithEmailAndPassword();
                  },
                  text: AppStrings.signUp,
                ),
              ],
            ),
          );
        });
  }
}
