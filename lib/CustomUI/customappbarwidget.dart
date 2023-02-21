import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Theme/theme_provider.dart';
import '../utils/colors.dart';

class CustomAppBarWidget extends StatelessWidget {
  final String title;
  final VoidCallback? onFirstTap;
  const CustomAppBarWidget({
    super.key,
    required this.title,
    this.onFirstTap,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return AppBar(
      backgroundColor: (themeProvider.isDarkMode)
          ? AppColor.colorBlack
          : AppColor.colorWhite,
      elevation: 0.0,
      leading: IconButton(
        onPressed: () {
          onFirstTap!();
        },
        icon: Icon(
          Icons.arrow_back_ios,
          color: (themeProvider.isDarkMode)
              ? AppColor.colorWhite
              : AppColor.colorBlack,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          color: (themeProvider.isDarkMode)
              ? AppColor.colorWhite
              : AppColor.colorBlack,
        ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications_none_outlined,
            color: (themeProvider.isDarkMode)
                ? AppColor.colorWhite
                : AppColor.colorBlack,
          ),
        ),
      ],
    );
  }
}
