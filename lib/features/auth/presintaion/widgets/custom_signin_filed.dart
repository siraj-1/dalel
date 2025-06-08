import 'package:dalel/core/functions/CoustomNavigation.dart';
import 'package:dalel/core/functions/custom_toast.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_btn.dart';
import 'package:dalel/features/auth/presintaion/auth_cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presintaion/auth_cubit/cubit/auth_state.dart';
import 'package:dalel/features/auth/presintaion/widgets/custom_widget_filed.dart';
import 'package:dalel/features/auth/presintaion/widgets/orget_pass_widget.dart';
import 'package:dalel/features/auth/presintaion/widgets/pass_visibilty.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSignInForm extends StatelessWidget {
  const CustomSignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(listener: (context, state) {
      if (state is SignInSuccessState) {
        showToast("Welcome Back!");
        WidgetsBinding.instance.addPostFrameCallback((_) {
          customReplacementNavigate(context, '/home');
        });
      }
    }, builder: (context, state) {
      AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
      return Form(
        key: authCubit.signinFormKey,
        child: Column(
          children: [
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
            const SizedBox(height: 10),
            const ForgotPassword(),
            const SizedBox(height: 102),
            state is SignInLoadingState
                ? CircularProgressIndicator(color: AppColors.primaryColor)
                : CustomBtn(
                    text: AppStrings.signIn,
                    onPressed: () {
                      if (authCubit.signinFormKey.currentState!.validate()) {
                        authCubit.signInWithEmaiilAndPass();
                      }
                    },
                  ),
          ],
        ),
      );
    });
  }
}
