import 'package:dalel/core/functions/CoustomNavigation.dart';
import 'package:dalel/core/functions/custom_toast.dart';
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

class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(listener: (context, state) {
      if (state is SignInSuccessState) {
        showToast("successfully check your Email");
        customReplacementNavigate(context, '/sginIn');
      } else if (state is SignInFailureState) {
        showToast(state.errMessage);
      }
    }, builder: (context, state) {
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
            PassInput(
              labelText: AppStrings.password,
              onChanged: (value) {
                authCubit.password = value;
              },
            ),
            const TermsAndconfditions(),
            const SizedBox(height: 88),
            state is SignUpLoadingState
                ? CircularProgressIndicator(
                    color: AppColors.primaryColor,
                  )
                : CustomBtn(
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
