import 'package:flutter/material.dart';
import 'package:logistics/CustomUI/customelevatedbtn.dart';
import 'package:logistics/Theme/theme_provider.dart';
import 'package:logistics/utils/colors.dart';
import 'package:provider/provider.dart';

import '../CustomUI/customappbarwidget.dart';

class SendPackageThree extends StatefulWidget {
  const SendPackageThree({super.key});

  @override
  State<SendPackageThree> createState() => _SendPackageThreeState();
}

class _SendPackageThreeState extends State<SendPackageThree> {
  var item = 1;
  double rate = 50.0;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 60),
        child: CustomAppBarWidget(
          title: 'Send Package',
          onFirstTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                height: 50.0,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: (themeProvider.isDarkMode)
                        ? AppColor.colorWhite
                        : AppColor.colorWhite,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                  color: (themeProvider.isDarkMode)
                      ? AppColor.colorBlack
                      : AppColor.colorDarkLightGray,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 135,
                        child: CustomElevatedBtn(
                          btnName: "From",
                          onTapp: () {
                            Navigator.pop(context);
                          },
                          color: (themeProvider.isDarkMode)
                              ? AppColor.colorBlack
                              : AppColor.colorDarkLightGray,
                          elevt: 0.0,
                          style: TextStyle(
                            fontSize: 15,
                            color: (themeProvider.isDarkMode)
                                ? AppColor.colorWhite
                                : AppColor.colorBlack,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 135,
                        child: CustomElevatedBtn(
                          btnName: "To",
                          onTapp: () {
                            // Navigator.of(context).push(
                            //   MaterialPageRoute(builder: (context) => SendPackageThree())
                            // );
                          },
                          color: (themeProvider.isDarkMode)
                              ? AppColor.colorDarkGray
                              : AppColor.colorPrimaryMid,
                          elevt: 0.0,
                          style: const TextStyle(
                              fontSize: 15, color: AppColor.colorPrimary),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                  top: 10.0, bottom: 15, left: 30.0, right: 30.0),
              child: SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'To:',
                      hintText: 'To:'),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30.0, bottom: 15, right: 30.0),
              child: SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name:',
                      hintText: 'Name:'),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30.0, bottom: 15, right: 30.0),
              child: SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Phone:',
                      hintText: 'Phone:'),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30.0, bottom: 15, right: 30.0),
              child: SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Address:',
                      hintText: 'Address:'),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 20, right: 30),
              child: Row(
                children: [
                  const Text(
                    "Total Item :",
                    style: TextStyle(fontSize: 18),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      setState(() {
                        item--;
                      });
                    },
                    child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: (themeProvider.isDarkMode)
                                  ? AppColor.colorWhite
                                  : AppColor.colorBlack,
                            ),
                            borderRadius: BorderRadius.circular(5)),
                        child: const Icon(
                          Icons.remove,
                          color: AppColor.colorPrimary,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("$item"),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        item++;
                      });
                    },
                    child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: (themeProvider.isDarkMode)
                                  ? AppColor.colorWhite
                                  : AppColor.colorBlack,
                            ),
                            borderRadius: BorderRadius.circular(5)),
                        child: const Icon(
                          Icons.add,
                          color: AppColor.colorPrimary,
                        )),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 30, top: 20, right: 30),
              child: Row(
                children: [
                  const Text("Shipping Price:"),
                  const Spacer(),
                  Text("Rs. ${rate * item}"),
                ],
              ),
            ),
            // SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 20, right: 30),
              child: Row(
                children: [
                  const Text("Delivery Charge:"),
                  const Spacer(),
                  Text("Rs. ${rate * 0.20 * item}"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 20, right: 30),
              child: Divider(
                color: AppColor.colorDarkGray,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 15, right: 30),
              child: Row(
                children: [
                  const Text(
                    "Total:",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Rs. ${rate * 0.20 * item + rate * item}",
                    style: const TextStyle(
                      color: AppColor.colorPrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  CustomElevatedBtn(
                    btnName: "Confirm",
                    onTapp: () {},
                    color: AppColor.colorPrimary,
                    style: TextStyle(fontSize: 15, color: AppColor.colorWhite),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
