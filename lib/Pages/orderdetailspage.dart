import 'package:flutter/material.dart';
import 'package:logistics/CustomUI/customelevatedbtn.dart';
import 'package:logistics/Theme/theme_provider.dart';
import 'package:logistics/utils/colors.dart';
import 'package:provider/provider.dart';

import '../CustomUI/customappbarwidget.dart';

class OrderDetailsPage extends StatefulWidget {
  const OrderDetailsPage({super.key});

  @override
  State<OrderDetailsPage> createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 60),
        child: CustomAppBarWidget(
          title: 'Details',
          onFirstTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 330,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 163, 242, 204),
                  ),
                  child: Center(
                    child: Image.asset(
                      "assets/images/details.png",
                      fit: BoxFit.cover,
                      scale: 3.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                    height: 330,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: (themeProvider.isDarkMode)
                            ? AppColor.colorWhite
                            : AppColor.colorBlack,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: const [
                              Text(
                                "Tracking Number:",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Text("#123456"),
                            ],
                          ),
                          Row(
                            children: const [
                              Text(
                                "The Recipiant Name:",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Text("Mo. Fazil"),
                            ],
                          ),
                          Row(
                            children: const [
                              Text(
                                "The Recipiant Number:",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Text("1231123456"),
                            ],
                          ),
                          Row(
                            children: const [
                              Text(
                                "Remainig Access Time:",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Text("3hr 34min"),
                            ],
                          ),
                          Row(
                            children: const [
                              Text(
                                "Distance:",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Text("12 Km"),
                            ],
                          ),
                          Row(
                            children: const [
                              Text(
                                "The Description:",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Text("5 Bags"),
                            ],
                          ),
                          Row(
                            children: const [
                              Text(
                                "Total Price",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Text("Rs.1549"),
                            ],
                          ),
                          Row(
                            children: [
                              const Text(
                                "Status:",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const Spacer(),
                              CustomElevatedBtn(
                                  btnName: "Done",
                                  onTapp: () {
                                    Navigator.pop(context);
                                  },
                                  color: AppColor.colorPrimary)
                            ],
                          ),
                        ],
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
