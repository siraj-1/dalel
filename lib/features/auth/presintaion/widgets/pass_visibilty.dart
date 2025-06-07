import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/features/auth/presintaion/auth_cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presintaion/widgets/custom_widget_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PassInput extends StatefulWidget {
  const PassInput({super.key, required this.labelText});
  final String labelText;

  @override
  State<PassInput> createState() => _PassInputState();
}

class _PassInputState extends State<PassInput> {
  // ignore: prefer_const_constructors
  final passWordIcon = Icon(
    Icons.visibility_off,
  );
  bool visibility = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 24),
      child: TextFormField(
        obscureText: visibility,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                visibility = !visibility;
                BlocProvider.of<AuthCubit>(context)
                    .updatePassVisibilty(visibile: visibility);
              });
            },
            icon: Icon(
              visibility ? Icons.visibility : Icons.visibility_off,
            ),
            color: BlocProvider.of<AuthCubit>(context)
                        .termsAndConditionCeckBoxValue ==
                    false
                ? AppColors.grey
                : AppColors.black, // or whatever color you want when active
          ),
          labelText: widget.labelText,
          labelStyle: CustomTextStyles.pacifico500style18,
          border: getBorderStyle(),
          enabledBorder: getBorderStyle(),
          focusedBorder: getBorderStyle(),
        ),
      ),
    );
  }
}
