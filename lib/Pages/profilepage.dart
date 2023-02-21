import 'package:flutter/material.dart';
import 'package:logistics/CustomUI/customelevatedbtn.dart';
import 'package:logistics/Theme/theme_provider.dart';
import 'package:provider/provider.dart';

import '../CustomUI/customappbarwidget.dart';
import '../utils/colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 60),
        child: CustomAppBarWidget(
          title: 'Profile',
          onFirstTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          SizedBox(
            height: 150.0,
            child: Center(
              child: Stack(children: [
                const CircleAvatar(
                  radius: 42,
                  backgroundColor: AppColor.colorPrimary,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("assets/images/birdlogo.png"),
                  ),
                ),
                Positioned(
                  top: 50,
                  right: 0.0,
                  child: InkWell(
                    child: const CircleAvatar(
                      radius: 15,
                      backgroundImage: AssetImage("assets/images/editicon.png"),
                    ),
                    onTap: () {},
                  ),
                )
              ]),
            ),
          ),
          Stack(alignment: AlignmentDirectional.center, children: [
            Container(
              height: 430,
              decoration: BoxDecoration(
                  color: (themeProvider.isDarkMode)
                      ? AppColor.colorBlack
                      : AppColor.colorWhite,
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      child: Column(children: [
                        SizedBox(
                          height: 60,
                          child: ListTile(
                            title: Text(
                              "User Name",
                              style: TextStyle(
                                fontSize: 13,
                                color: (themeProvider.isDarkMode)
                                    ? AppColor.colorDarkLightGray
                                    : AppColor.colorDarkGray,
                              ),
                            ),
                            subtitle: Text(
                              "Sanjeev Singh",
                              style: TextStyle(
                                fontSize: 14,
                                color: (themeProvider.isDarkMode)
                                    ? AppColor.colorWhite
                                    : AppColor.colorBlack,
                              ),
                            ),
                          ),
                        ),
                        const Divider(),
                        SizedBox(
                          height: 60,
                          child: ListTile(
                            title: Text(
                              "Email Address",
                              style: TextStyle(
                                fontSize: 13,
                                color: (themeProvider.isDarkMode)
                                    ? AppColor.colorDarkLightGray
                                    : AppColor.colorDarkGray,
                              ),
                            ),
                            subtitle: Text(
                              "sanjeevsingh@gmail.com",
                              style: TextStyle(
                                fontSize: 14,
                                color: (themeProvider.isDarkMode)
                                    ? AppColor.colorWhite
                                    : AppColor.colorBlack,
                              ),
                            ),
                          ),
                        ),
                        const Divider(),
                        SizedBox(
                          height: 60,
                          child: ListTile(
                            title: Text(
                              "Phone",
                              style: TextStyle(
                                fontSize: 13,
                                color: (themeProvider.isDarkMode)
                                    ? AppColor.colorDarkLightGray
                                    : AppColor.colorDarkGray,
                              ),
                            ),
                            subtitle: Text(
                              "012345....",
                              style: TextStyle(
                                fontSize: 14,
                                color: (themeProvider.isDarkMode)
                                    ? AppColor.colorWhite
                                    : AppColor.colorBlack,
                              ),
                            ),
                          ),
                        ),
                        const Divider(),
                        SizedBox(
                          height: 60,
                          child: ListTile(
                            title: Text(
                              "Address",
                              style: TextStyle(
                                fontSize: 13,
                                color: (themeProvider.isDarkMode)
                                    ? AppColor.colorDarkLightGray
                                    : AppColor.colorDarkGray,
                              ),
                            ),
                            subtitle: Text(
                              "Indira Nagar,Lucknow,UP",
                              style: TextStyle(
                                fontSize: 14,
                                color: (themeProvider.isDarkMode)
                                    ? AppColor.colorWhite
                                    : AppColor.colorBlack,
                              ),
                            ),
                          ),
                        ),
                        const Divider(),
                        SizedBox(
                          height: 60,
                          child: ListTile(
                            title: Text(
                              "Password",
                              style: TextStyle(
                                fontSize: 13,
                                color: (themeProvider.isDarkMode)
                                    ? AppColor.colorDarkLightGray
                                    : AppColor.colorDarkGray,
                              ),
                            ),
                            subtitle: Text(
                              "********",
                              style: TextStyle(
                                fontSize: 14,
                                color: (themeProvider.isDarkMode)
                                    ? AppColor.colorWhite
                                    : AppColor.colorBlack,
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 425),
              child: SizedBox(
                height: 45.0,
                width: 280,
                child: CustomElevatedBtn(
                  btnName: "Edit",
                  onTapp: () {},
                  color: AppColor.colorPrimary,
                  style: TextStyle(fontSize: 15, color: AppColor.colorWhite),
                ),
              ),
            )
          ]),
          const SizedBox(height: 50)
        ]),
      ),
    );
  }
}
