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
class HomeNavBarWidget extends StatefulWidget {
  const HomeNavBarWidget({super.key});

  @override
  State<HomeNavBarWidget> createState() => _HomeNavBarWidgetState();
}

class _HomeNavBarWidgetState extends State<HomeNavBarWidget> {
  final PersistentTabController _controller = PersistentTabController();

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
        icon: SvgPicture.asset(Assets.homeSvg),
        inactiveIcon: SvgPicture.asset(Assets.homeNonSvg)),
    PersistentBottomNavBarItem(
        icon: SvgPicture.asset(Assets.searchSvg),
        inactiveIcon: SvgPicture.asset(Assets.searchNonSvg)),
    PersistentBottomNavBarItem(
        icon: SvgPicture.asset(Assets.profileActive),
        inactiveIcon: SvgPicture.asset(Assets.profile)),
    PersistentBottomNavBarItem(
        icon: SvgPicture.asset(Assets.maskActiveSvg),
        inactiveIcon: SvgPicture.asset(Assets.maskSvg)),
  ];
}

class AppAssets {
  static const String homeSvg = 'assets/images/home.svg';
  static const String homeNonSvg = 'assets/images/home-non.svg';
  static const String searchSvg = 'assets/images/search.svg';
  static const String searchNonSvg = 'assets/images/search-non.svg';
  static const String maskSvg = 'assets/images/Mask.svg';
  static const String maskActiveSvg = 'assets/images/Mask-active.svg';

  // Add more as needed
}
