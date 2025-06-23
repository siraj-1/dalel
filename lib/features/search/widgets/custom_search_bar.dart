import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 16),
        SvgPicture.asset(Assets.backsign),
        const SizedBox(width: 23),
        Container(
          width: 303,
          height: 56,
          decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(width: 15.9),
              const SizedBox(width: 7.59),
              Expanded(
                  child: TextField(
                decoration: InputDecoration(
                  icon: SizedBox(
                      height: 20,
                      width: 20,
                      child: SvgPicture.asset(Assets.searchIcon)),
                  border: InputBorder.none,
                ),
                cursorColor: Colors.white,
                style: const TextStyle(color: Colors.white),
              ))
            ],
          ),
        )
      ],
    );
  }
}
