import 'package:flutter/material.dart';

import '../CustomUI/customappbarwidget.dart';
import '../CustomUI/customdelwidget.dart';
import '../Models/modeldelivered.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    var dummydelsdata =
        List.generate(15, (index) => DeliveredData.modeldels[0]);
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 60),
        child: CustomAppBarWidget(
          title: 'History',
          onFirstTap: () {
            // Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0),
            child: Row(
              children: const [
                Text(
                  'Recent',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemCount: dummydelsdata.length,
                itemBuilder: (context, index) {
                  return CustomDelWidget(
                    delsdata: dummydelsdata[index],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
