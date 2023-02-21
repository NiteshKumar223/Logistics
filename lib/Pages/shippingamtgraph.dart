import 'package:flutter/material.dart';
import 'package:logistics/CustomUI/customappbarwidget.dart';
import 'package:logistics/utils/colors.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:provider/provider.dart';
import '../Models/modelBarChart.dart';
import '../Theme/theme_provider.dart';

class ShippingAmtGraph extends StatefulWidget {
  const ShippingAmtGraph({super.key});

  @override
  State<ShippingAmtGraph> createState() => _ShippingAmtGraphState();
}

class _ShippingAmtGraphState extends State<ShippingAmtGraph> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    final List<ModelBarChart> data = [
      ModelBarChart(
        item: "1",
        count: 500,
        color: charts.ColorUtil.fromDartColor(AppColor.colorDarkGray),
      ),
      ModelBarChart(
        item: "2",
        count: 450,
        color: charts.ColorUtil.fromDartColor(AppColor.colorPrimary),
      ),
      ModelBarChart(
        item: "3",
        count: 380,
        color: charts.ColorUtil.fromDartColor(Colors.green),
      ),
      ModelBarChart(
        item: "4",
        count: 300,
        color: charts.ColorUtil.fromDartColor(AppColor.colorBlue),
      ),
      ModelBarChart(
        item: "5",
        count: 250,
        color: charts.ColorUtil.fromDartColor(AppColor.colorRed),
      ),
      ModelBarChart(
        item: "6",
        count: 100,
        color: charts.ColorUtil.fromDartColor(AppColor.colorPrimaryLight),
      ),
    ];

    List<charts.Series<ModelBarChart, String>> series = [
      charts.Series(
        id: "count",
        data: data,
        domainFn: (ModelBarChart series, _) => series.item,
        measureFn: (ModelBarChart series, _) => series.count,
        colorFn: (ModelBarChart series, _) => series.color,
      )
    ];

    var themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 60),
        child: CustomAppBarWidget(
          title: 'Shipping Amount',
          onFirstTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 130,
                  width: 150,
                  child: Column(
                    children: [
                      const Text(
                        "Available Balance ",
                        style: TextStyle(fontSize: 18),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.colorPrimary,
                        ),
                        child: Center(
                            child: Text(
                          "Rs.25000",
                          style: TextStyle(
                              color: AppColor.colorWhite, fontSize: 18),
                        )),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 130,
                  width: 150,
                  child: Column(
                    children: [
                      const Text(
                        "Total Money",
                        style: TextStyle(fontSize: 18),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.colorPrimary,
                        ),
                        child: Center(
                            child: Text(
                          "Rs.465465",
                          style: TextStyle(
                              color: AppColor.colorWhite, fontSize: 18),
                        )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: (themeProvider.isDarkMode)
                    ? AppColor.colorBlack
                    : AppColor.colorWhite,
              ),
              padding: const EdgeInsets.all(10.0),
              child: charts.BarChart(
                series,
                animate: false,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Indicator(
                no: 1, clr: AppColor.colorDarkGray, itemName: "Receive Pickup"),
            const Indicator(
                no: 2, clr: AppColor.colorPrimary, itemName: "On the way"),
            const Indicator(
                no: 3, clr: Colors.green, itemName: "Successful delivery"),
            Indicator(
                no: 4, clr: AppColor.colorBlue, itemName: "Forworded shipment"),
            Indicator(
                no: 5, clr: AppColor.colorRed, itemName: "Delivery Details"),
            Indicator(
                no: 6, clr: AppColor.colorPrimaryLight, itemName: "Returns"),
          ]),
        ),
      ),
    );
  }
}

class Indicator extends StatelessWidget {
  final Color clr;
  final String itemName;
  final int no;
  const Indicator(
      {super.key, required this.clr, required this.itemName, required this.no});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 3.0, bottom: 3.0),
      child: Row(
        children: [
          Text(no.toString()),
          const SizedBox(
            width: 10.0,
          ),
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: clr),
          ),
          const SizedBox(
            width: 15,
          ),
          Text(itemName),
        ],
      ),
    );
  }
}
