import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/features/auth/presintaion/auth_cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presintaion/auth_cubit/cubit/auth_state.dart';
import 'package:dalel/features/auth/presintaion/widgets/custom_widget_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PassInput extends StatelessWidget {
  const PassInput({super.key, required this.labelText});
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 24),
      child: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          final cubit = BlocProvider.of<AuthCubit>(context);
          final isVisible = cubit.passVisibilty ?? false;

          return TextFormField(
            obscureText: !isVisible,
            onChanged: (value) {
              cubit.password = value;
            },
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {
                  cubit.updatePassVisibilty(visibile: !isVisible);
                },
                icon: Icon(
                  isVisible ? Icons.visibility : Icons.visibility_off,
                  color: isVisible ? AppColors.black : AppColors.grey,
                ),
              ),
              labelText: labelText,
              labelStyle: CustomTextStyles.pacifico500style18,
              border: getBorderStyle(),
              enabledBorder: getBorderStyle(),
              focusedBorder: getBorderStyle(),
            ),
          );
        },
      ),
    );
  }
}
