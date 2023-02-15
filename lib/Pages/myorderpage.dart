import 'package:flutter/material.dart';
import 'package:logistics/CustomUI/custommyorderwidget.dart';
import 'package:logistics/utils/colors.dart';

import '../CustomUI/customdelwidget.dart';
import '../Models/modelorder.dart';

class MyOrderPage extends StatefulWidget {
  const MyOrderPage({super.key});

  @override
  State<MyOrderPage> createState() => _MyOrderPageState();
}

class _MyOrderPageState extends State<MyOrderPage> {
  @override
  Widget build(BuildContext context) {
    var dummyordersdata = List.generate(15, (index) => OrderData.modelorders[0]);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColor.colorBlack,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "My Order",
          style: TextStyle(color: AppColor.colorBlack),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: AppColor.colorWhite,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none_outlined,
                color: AppColor.colorBlack,
              )),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            color: AppColor.colorWhite,
            child: Center(
              child: Container(
                  decoration: BoxDecoration(
                      color: AppColor.colorPrimary,
                      // border: Border.all(),
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
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Text(
              'My Order',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: dummyordersdata.length,
              itemBuilder: (context, index) {
                return CustomMyOrderWidget(
                  ordersdata: dummyordersdata[index],
                );
              }
            ),
          ),
        ],
      ),
    );
  }
}
