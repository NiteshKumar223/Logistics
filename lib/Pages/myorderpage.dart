import 'package:flutter/material.dart';
import 'package:logistics/CustomUI/custommyorderwidget.dart';
import 'package:logistics/utils/colors.dart';

import '../CustomUI/customappbarwidget.dart';
import '../Models/modelorder.dart';

class MyOrderPage extends StatefulWidget {
  const MyOrderPage({super.key});

  @override
  State<MyOrderPage> createState() => _MyOrderPageState();
}

class _MyOrderPageState extends State<MyOrderPage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var dummyordersdata =
        List.generate(15, (index) => OrderData.modelorders[0]);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 60),
        child: CustomAppBarWidget(
          title: 'My Order',
          onFirstTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 90,
            child: Center(
              child: Container(
                  decoration: BoxDecoration(
                      color: AppColor.colorPrimary,
                      borderRadius: BorderRadius.circular(40)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.note_rounded,
                      color: AppColor.colorWhite,
                      size: 40.0,
                    ),
                  )),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Text(
              'My Order',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemCount: dummyordersdata.length,
                itemBuilder: (context, index) {
                  return CustomMyOrderWidget(
                    ordersdata: dummyordersdata[index],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
