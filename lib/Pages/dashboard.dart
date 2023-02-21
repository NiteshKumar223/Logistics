import 'package:flutter/material.dart';
import 'package:logistics/Pages/sendpackageone.dart';
import 'package:logistics/Theme/theme_provider.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:provider/provider.dart';

import '../utils/colors.dart';
import 'historypage.dart';
import 'homepage.dart';
import 'settingpage.dart';
import 'trackingpage.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final controller = PersistentTabController(initialIndex: 0);

  List<Widget> screens() {
    return [
      const HomePage(),
      const TrackingPage(),
      const SendPackageOne(),
      const HistoryPage(),
      const SettingPage()
    ];
  }

  List<PersistentBottomNavBarItem> navBarItem() {
    return [
      PersistentBottomNavBarItem(
          icon: const Icon(Icons.home),
          inactiveIcon: Icon(
            Icons.home,
            color: AppColor.colorDarkGray,
          ),
          title: "home",
          textStyle: const TextStyle(fontSize: 13.0),
          activeColorPrimary: AppColor.colorPrimary),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.location_on),
        inactiveIcon: Icon(
          Icons.location_on,
          color: AppColor.colorDarkGray,
        ),
        title: "Tracking",
        textStyle: const TextStyle(fontSize: 13.0),
        activeColorPrimary: AppColor.colorPrimary,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.add,
          color: AppColor.colorBlack,
          size: 45.0,
        ),
        inactiveIcon: Icon(
          Icons.add,
          color: AppColor.colorWhite,
          size: 40.0,
        ),
        activeColorPrimary: AppColor.colorPrimary,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.history),
        inactiveIcon: Icon(
          Icons.history,
          color: AppColor.colorDarkGray,
        ),
        title: "History",
        textStyle: const TextStyle(fontSize: 13.0),
        activeColorPrimary: AppColor.colorPrimary,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.settings),
        inactiveIcon: Icon(
          Icons.settings,
          color: AppColor.colorDarkGray,
        ),
        title: "Settings",
        textStyle: const TextStyle(fontSize: 13.0),
        activeColorPrimary: AppColor.colorPrimary,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return PersistentTabView(
      context,
      screens: screens(),
      items: navBarItem(),
      navBarHeight: 55.0,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(1.0),
      ),
      navBarStyle: NavBarStyle.style15,
      backgroundColor: (themeProvider.isDarkMode)
          ? AppColor.colorBlack
          : AppColor.colorWhite,
    );
  }
}
