import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_btn.dart';
import 'package:dalel/features/auth/presintaion/auth_cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presintaion/auth_cubit/cubit/auth_state.dart';
import 'package:dalel/features/auth/presintaion/widgets/custom_widget_filed.dart';
import 'package:dalel/features/auth/presintaion/widgets/pass_visibilty.dart';
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
          AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
          return Form(
            key: authCubit.signupFormKey,
            child: Column(
              children: [
                CustomTextFormFiled(
                  labelText: AppStrings.fristName,
                  onChanged: (fristName) {
                    authCubit.fristName = fristName;
                  },
                ),
                CustomTextFormFiled(
                  labelText: AppStrings.lastName,
                  onChanged: (lastName) {
                    authCubit.lastName = lastName;
                  },
                ),
                CustomTextFormFiled(
                  labelText: AppStrings.emailAddress,
                  onChanged: (emailAddress) {
                    authCubit.emailAddress = emailAddress;
                  },
                ),
                const PassInput(labelText: AppStrings.password),
                const TermsAndconfditions(),
                const SizedBox(
                  height: 88,
                ),
                CustomBtn(
                  text: AppStrings.signUp,
                  color: authCubit.termsAndConditionCeckBoxValue == false
                      ? AppColors.grey
                      : null,
                  onPressed: () {
                    if (authCubit.termsAndConditionCeckBoxValue == true) {
                      if (authCubit.signupFormKey.currentState!.validate()) {
                        authCubit.signUpWithEmailAndPassword();
                      }
                    }
                  },
                ),
              ],
            ),
          );
        });
  }
}
