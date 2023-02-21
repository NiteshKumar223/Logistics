import 'package:flutter/material.dart';
import 'package:logistics/Models/modeldelivered.dart';
import 'package:logistics/Theme/theme_provider.dart';
import 'package:logistics/utils/colors.dart';
import 'package:provider/provider.dart';

import '../Pages/orderdetailspage.dart';

class CustomDelWidget extends StatelessWidget {
  final ModelDelivered delsdata;
  const CustomDelWidget({super.key, required this.delsdata});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: AppColor.colorWhite),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: (themeProvider.isDarkMode)
                    ? AppColor.colorBlack
                    : AppColor.colorWhite,
                blurRadius: 1.0,
              ),
            ]),
        height: 140,
        width: double.infinity,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  "assets/images/delivery2.jpg",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "To:",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Price:",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Kind:",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Status:",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 90,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(delsdata.delToName),
                      Text(delsdata.delPrice),
                      Text(delsdata.delKind),
                      Text(delsdata.delStatus),
                    ]),
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: InkWell(
                child: SizedBox(
                  height: 90,
                  width: 40,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: AppColor.colorPrimary,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return const OrderDetailsPage();
                        },
                      ));
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
