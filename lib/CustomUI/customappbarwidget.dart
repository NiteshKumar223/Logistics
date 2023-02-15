import 'package:flutter/material.dart';

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
    
    return AppBar(
        backgroundColor: AppColor.colorWhite,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            onFirstTap!();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColor.colorBlack,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(color: AppColor.colorBlack),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none_outlined,
              color: AppColor.colorBlack,
            ),
          ),
        ],
      );
  }
}