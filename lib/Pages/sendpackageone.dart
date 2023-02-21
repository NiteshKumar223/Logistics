import 'package:flutter/material.dart';
import 'package:logistics/CustomUI/customelevatedbtn.dart';
import 'package:logistics/Pages/sendpackagetwo.dart';
import 'package:logistics/utils/colors.dart';
import 'package:provider/provider.dart';

import '../CustomUI/customappbarwidget.dart';
import '../Theme/theme_provider.dart';

class SendPackageOne extends StatefulWidget {
  const SendPackageOne({super.key});

  @override
  State<SendPackageOne> createState() => _SendPackageOneState();
}

class _SendPackageOneState extends State<SendPackageOne> {
  int? _value = 1;
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
            // Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "From",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10.0),
              SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    prefixIcon: Icon(
                      Icons.location_on,
                      color: (themeProvider.isDarkMode)
                          ? AppColor.colorWhite
                          : AppColor.colorBlack,
                    ),
                    hintText: "Pickup Location Here",
                  ),
                ),
              ),
              const SizedBox(height: 25.0),
              const Text(
                "To",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15.0),
              SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    prefixIcon: Icon(
                      Icons.location_on,
                      color: (themeProvider.isDarkMode)
                          ? AppColor.colorWhite
                          : AppColor.colorBlack,
                    ),
                    hintText: "Delivery location Here",
                  ),
                ),
              ),
              const SizedBox(height: 25.0),
              const Text("Total type",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 15.0),
              SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    prefixIcon: Icon(
                      Icons.filter_list,
                      color: (themeProvider.isDarkMode)
                          ? AppColor.colorWhite
                          : AppColor.colorBlack,
                    ),
                    hintText: "Number of Items",
                  ),
                ),
              ),
              const SizedBox(height: 35.0),
              const Text("Package Type",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColor.colorDivider),
                        borderRadius: BorderRadius.circular(10)),
                    height: 145.0,
                    width: 110.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/images/goods.png",
                          fit: BoxFit.cover,
                        ),
                        const Text("Goods",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Radio(
                          value: 1,
                          groupValue: _value,
                          onChanged: (value) {
                            setState(() {
                              _value = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColor.colorDivider),
                        borderRadius: BorderRadius.circular(10)),
                    height: 145.0,
                    width: 110.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/images/documents.png",
                          fit: BoxFit.cover,
                        ),
                        const Text(
                          "Documents",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Radio(
                          value: 2,
                          groupValue: _value,
                          onChanged: (value) {
                            setState(() {
                              _value = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Center(
                child: SizedBox(
                  height: 45.0,
                  width: 300,
                  child: CustomElevatedBtn(
                    btnName: "Complete the Process >",
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColor.colorWhite,
                    ),
                    onTapp: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SendPackagetwo()));
                    },
                    color: AppColor.colorPrimary,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
