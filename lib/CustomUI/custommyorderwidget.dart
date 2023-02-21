import 'package:flutter/material.dart';
import 'package:logistics/Models/modelorder.dart';

class CustomMyOrderWidget extends StatelessWidget {
  final ModelOrder ordersdata;
  const CustomMyOrderWidget({super.key, required this.ordersdata});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80,
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: SizedBox(
              height: 80,
              width: 50,
              child: Image.asset(
                "assets/images/destination.png",
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(ordersdata.orderFrom),
                Text(
                  ordersdata.orderTo,
                ),
              ],
            ),
          ),
          const Spacer(),
          SizedBox(
            height: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Ord:${ordersdata.orderDate}"),
                Text("Del:${ordersdata.orderDelDate}"),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
