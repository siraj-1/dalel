import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/features/cart/presintaion/cart_view.dart';
import 'package:dalel/features/home/presentation/view/home_view.dart';
import 'package:dalel/features/profile/presintaion/view/profile_view.dart';
import 'package:dalel/features/search/presintaion/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

// ignore: must_be_immutable
class HomeNavBarWidget extends StatelessWidget {
  HomeNavBarWidget({super.key});
  PersistentTabController _controller = PersistentTabController();

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreens(),
      controller: _controller,
      items: _navBarsItems(),
      navBarStyle: NavBarStyle.style12,
      backgroundColor: AppColors.primaryColor,
      decoration: const NavBarDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
    );
  }
}

List<Widget> _buildScreens() {
  return [
    const HomeView(),
    const SearchView(),
    const ProfileView(),
    const CartView(),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
        icon: SvgPicture.asset("assets/images/home.svg")),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.shopping_bag),
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.portable_wifi_off_outlined),
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.email),
    )
  ];
}
