import 'package:flutter/material.dart';
import 'package:logistics/CustomUI/customelevatedbtn.dart';

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
    return Scaffold(
      appBar: 
      PreferredSize(
        preferredSize: Size(screenSize.width,60),
        child: CustomAppBarWidget(
          title: 'Profile',
          onFirstTap: () {
            Navigator.pop(context);
          },
        ),
      ),
    // return Scaffold(
    //   appBar: AppBar(
    //     backgroundColor: AppColor.colorWhite,
    //     elevation: 0.0,
    //     leading: IconButton(
    //       icon: Icon(
    //         Icons.arrow_back_ios,
    //         color: AppColor.colorBlack,
    //       ),
    //       onPressed: () {
    //         Navigator.pop(context);
    //       },
    //     ),
    //     title: Text(
    //       "Profile",
    //       style: TextStyle(color: AppColor.colorBlack),
    //     ),
    //     centerTitle: true,
    //     actions: [
    //       IconButton(
    //         onPressed: () {},
    //         icon: Icon(
    //           Icons.notifications_none_outlined,
    //           color: AppColor.colorBlack,
    //         ),
    //       ),
    //     ],
    //   ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
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
          // const SizedBox(height: 30.0,),
          Stack(alignment: AlignmentDirectional.center, children: [
            Container(
              height: 430,
              decoration: BoxDecoration(
                  color: AppColor.colorWhite,
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
                                  fontSize: 13, color: AppColor.colorDarkGray),
                            ),
                            subtitle: Text(
                              "Sanjeev Singh",
                              style: TextStyle(
                                  fontSize: 14, color: AppColor.colorBlack),
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
                                  fontSize: 13, color: AppColor.colorDarkGray),
                            ),
                            subtitle: Text(
                              "sanjeevsingh@gmail.com",
                              style: TextStyle(
                                  fontSize: 14, color: AppColor.colorBlack),
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
                                  fontSize: 13, color: AppColor.colorDarkGray),
                            ),
                            subtitle: Text(
                              "012345....",
                              style: TextStyle(
                                  fontSize: 14, color: AppColor.colorBlack),
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
                                  fontSize: 13, color: AppColor.colorDarkGray),
                            ),
                            subtitle: Text(
                              "Indira Nagar,Lucknow,UP",
                              style: TextStyle(
                                  fontSize: 14, color: AppColor.colorBlack),
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
                                  fontSize: 13, color: AppColor.colorDarkGray),
                            ),
                            subtitle: Text(
                              "********",
                              style: TextStyle(
                                  fontSize: 14, color: AppColor.colorBlack),
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
                ),
              ),
            )
          ]),
          SizedBox(height: 50)
        ]),
      ),
    );
  }
}
