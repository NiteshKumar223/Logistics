import 'package:flutter/material.dart';
import 'package:logistics/Pages/profilepage.dart';
import 'package:logistics/utils/colors.dart';

import '../CustomUI/changthemebuttonwidget.dart';
import '../CustomUI/customappbarwidget.dart';
import 'Login.dart';
import 'shippingamtgraph.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 60),
        child: CustomAppBarWidget(
          title: 'Settings',
          onFirstTap: () {
            // Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 10.0,
                ),
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: CircleAvatar(
                      radius: 37,
                      backgroundColor: AppColor.colorPrimary,
                      child: InkWell(
                        child: const CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              AssetImage("assets/images/birdlogo.png"),
                        ),
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const ProfilePage();
                          }));
                        },
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Hello"),
                      Text(
                        "Sanjeev Singh",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Spacer(),
                  ChangeThemeButtonWidget(),
                ]),
                const SizedBox(
                  height: 30.0,
                ),
                Row(
                  children: const [
                    Text("Total Shipment:"),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "300 Shipments",
                      style: TextStyle(color: AppColor.colorPrimary),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 30),
                  child: Text("Member From : 2008"),
                ),
                SizedBox(
                  height: 45,
                  child: ListTile(
                    leading: Image.asset(
                      "assets/images/tracking.png",
                      height: 30,
                      color: AppColor.colorPrimary,
                    ),
                    title: const Text("Shipping Amount"),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: AppColor.colorPrimary,
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ShippingAmtGraph(),
                      ));
                    },
                  ),
                ),
                const Divider(),
                SizedBox(
                  height: 45,
                  child: ListTile(
                    leading: const Icon(
                      Icons.payment,
                      color: AppColor.colorPrimary,
                    ),
                    title: const Text("Payment Setting"),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: AppColor.colorPrimary,
                    ),
                    onTap: () {},
                  ),
                ),
                const Divider(),
                SizedBox(
                  height: 45,
                  child: ListTile(
                    leading: const Icon(
                      Icons.person,
                      color: AppColor.colorPrimary,
                    ),
                    title: const Text("Personal Information"),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: AppColor.colorPrimary,
                    ),
                    onTap: () {},
                  ),
                ),
                const Divider(),
                SizedBox(
                  height: 45,
                  child: ListTile(
                    leading: const Icon(
                      Icons.language,
                      color: AppColor.colorPrimary,
                    ),
                    title: const Text("Language"),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: AppColor.colorPrimary,
                    ),
                    onTap: () {},
                  ),
                ),
                const Divider(),
                SizedBox(
                  height: 45,
                  child: ListTile(
                    leading: const Icon(
                      Icons.support_agent,
                      color: AppColor.colorPrimary,
                    ),
                    title: const Text("Support"),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: AppColor.colorPrimary,
                    ),
                    onTap: () {},
                  ),
                ),
                const Divider(),
                SizedBox(
                  height: 45,
                  child: ListTile(
                    leading: Icon(
                      Icons.logout,
                      color: AppColor.colorRed,
                    ),
                    title: const Text("Logout"),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: AppColor.colorPrimary,
                    ),
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const Login(),
                      ));
                    },
                  ),
                ),
                const Divider(),
              ]),
        ),
      ),
    );
  }
}
