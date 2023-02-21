import 'package:flutter/material.dart';
import 'package:logistics/CustomUI/customelevatedbtn.dart';
import 'package:logistics/Pages/myorderpage.dart';
import 'package:logistics/Pages/sendpackageone.dart';
import 'package:logistics/Pages/trackingpage.dart';
import 'package:logistics/Theme/theme_provider.dart';
import 'package:logistics/utils/colors.dart';
import 'package:provider/provider.dart';

import '../CustomUI/customdelwidget.dart';
import '../Models/modeldelivered.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var dummydelsdata =
        List.generate(15, (index) => DeliveredData.modeldels[0]);
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          SizedBox(
            height: 200,
            child: AppBar(
              backgroundColor: AppColor.colorPrimaryLight,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0)),
              centerTitle: true,
              elevation: 0,
              leading: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: AppColor.colorWhite,
                  ),
                  onPressed: () {},
                ),
              ),
              title: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Row(
                  children: const [
                    Icon(Icons.location_on),
                    Text(
                      "Lucknow, Uttar Padesh",
                      style: TextStyle(),
                    ),
                  ],
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_none_rounded),
                ),
              ],
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(120),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 15.0, left: 15.0, right: 15.0, bottom: 70.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Your Tracking Number",
                      prefixIcon: const Icon(Icons.route),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      contentPadding: const EdgeInsets.all(3.0),
                      filled: true,
                      fillColor: (themeProvider.isDarkMode)
                          ? AppColor.colorBlack
                          : AppColor.colorWhite,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150, left: 35, right: 35),
            child: Card(
              color: (themeProvider.isDarkMode)
                  ? AppColor.colorBlack
                  : AppColor.colorWhite,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: AppColor.colorWhite),
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10.0,
              child: Container(
                height: 120,
                margin: const EdgeInsets.only(left: 15.0, top: 15.0, right: 60),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: const [
                          Text(
                            "45% ",
                            style: TextStyle(
                                fontSize: 18, color: AppColor.colorPrimary),
                          ),
                          Text("Discount"),
                        ],
                      ),
                      Wrap(
                        children: const [
                          Text(
                              "Get great Discount on all your Shipments in the winter season"),
                        ],
                      ),
                      CustomElevatedBtn(
                        btnName: "Get Now",
                        onTapp: () {},
                        color: AppColor.colorPrimary,
                      ),
                    ]),
              ),
            ),
          ),
          Positioned(
            right: 10.0,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 160,
              ),
              child: Container(
                height: 120,
                width: 80,
                margin: const EdgeInsets.only(right: 35),
                child: Image.asset(
                  "assets/images/gifts.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  child: Card(
                    color: (themeProvider.isDarkMode)
                        ? AppColor.colorBlack
                        : AppColor.colorWhite,
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: AppColor.colorWhite),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: SizedBox(
                      height: 90,
                      width: 90,
                      child: Image.asset(
                        "assets/images/box.png",
                        scale: 15,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SendPackageOne()));
                  },
                ),
                InkWell(
                  child: Card(
                    color: (themeProvider.isDarkMode)
                        ? AppColor.colorBlack
                        : AppColor.colorWhite,
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: AppColor.colorWhite),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: SizedBox(
                      height: 90,
                      width: 90,
                      child: Image.asset(
                        "assets/images/box.png",
                        scale: 15,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const MyOrderPage()),
                    );
                  },
                ),
                InkWell(
                  child: Card(
                    color: (themeProvider.isDarkMode)
                        ? AppColor.colorBlack
                        : AppColor.colorWhite,
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: AppColor.colorWhite),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: SizedBox(
                      height: 90,
                      width: 90,
                      child: Image.asset(
                        "assets/images/deleveryvan2.png",
                        scale: 8.0,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const TrackingPage()));
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 305, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Icons.add,
                  size: 35,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 30,
                  ),
                  child: Icon(
                    Icons.search,
                    size: 35,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.location_on,
                    size: 35,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 405, right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text('New Order'),
                Text('Check My Order '),
                Text('  Track'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 450.0, left: 25.0, right: 25.0),
            child: Row(
              children: const [
                Text(
                  "Last Activity",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  "See All >",
                  style: TextStyle(color: AppColor.colorPrimary),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 470.0,
            ),
            child: Column(
              children: [
                ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemCount: dummydelsdata.length,
                    itemBuilder: (context, index) {
                      return CustomDelWidget(
                        delsdata: dummydelsdata[index],
                      );
                    }),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
