import 'package:dalel/core/functions/CoustomNavigation.dart';
import 'package:dalel/core/functions/custom_toast.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_btn.dart';
import 'package:dalel/features/auth/presintaion/auth_cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presintaion/auth_cubit/cubit/auth_state.dart';
import 'package:dalel/features/auth/presintaion/widgets/custom_widget_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomForgetPassForm extends StatelessWidget {
  const CustomForgetPassForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(listener: (context, state) {
      if (state is ForgotPassSuccessState) {
        showToast("check your Email to reset");
        customReplacementNavigate(context, "/sginIn");
      } else if (state is ForgotPassFailureState) {
        showToast(state.errMessage);
      }
    }, builder: (context, state) {
      AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
      return Form(
        key: authCubit.forgotpassFormKey,
        child: Column(
          children: [
            CustomTextFormFiled(
              labelText: AppStrings.emailAddress,
              onChanged: (emailAddress) {
                authCubit.emailAddress = emailAddress.trim();
              },
            ),
            const SizedBox(height: 129),
            state is ForgotPassLoadingState
                ? CircularProgressIndicator(color: AppColors.primaryColor)
                : CustomBtn(
                    text: AppStrings.sendResetPasswordLink,
                    onPressed: () async {
                      if (authCubit.forgotpassFormKey.currentState!
                          .validate()) {
                        await authCubit.resetPassWithLink();
                      }
                    },
                  ),
          ],
        ),
      );
    });
  }
}
