import 'package:flutter/material.dart';
import 'package:logistics/CustomUI/customelevatedbtn.dart';
import 'package:logistics/utils/colors.dart';

class OrderDetailsPage extends StatefulWidget {
  const OrderDetailsPage({super.key});

  @override
  State<OrderDetailsPage> createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: AppColor.colorBlack,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Details",
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children:<Widget> [
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
                    borderRadius: BorderRadius.circular(20),
                    color: AppColor.colorWhite,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Row(children: [
                        Text("Tracking Number:",style: TextStyle(fontWeight: FontWeight.bold),),
                        Spacer(),
                        Text("#123456"),
                      ],),
                      Row(children: [
                        Text("The Recipiant Name:",style: TextStyle(fontWeight: FontWeight.bold),),
                        Spacer(),
                        Text("Mo. Fazil"),
                      ],),
                      Row(children: [
                        Text("The Recipiant Number:",style: TextStyle(fontWeight: FontWeight.bold),),
                        Spacer(),
                        Text("1231123456"),
                      ],),
                      Row(children: [
                        Text("Remainig Access Time:",style: TextStyle(fontWeight: FontWeight.bold),),
                        Spacer(),
                        Text("3hr 34min"),
                      ],),
                      Row(children: [
                        Text("Distance:",style: TextStyle(fontWeight: FontWeight.bold),),
                        Spacer(),
                        Text("12 Km"),
                      ],),
                      Row(children: [
                        Text("The Description:",style: TextStyle(fontWeight: FontWeight.bold),),
                        Spacer(),
                        Text("5 Bags"),
                      ],),
                      Row(children: [
                        Text("Total Price",style: TextStyle(fontWeight: FontWeight.bold),),
                        Spacer(),
                        Text("Rs.1549"),
                      ],),
                      Row(children: [
                        Text("Status:",style: TextStyle(fontWeight: FontWeight.bold),),
                        Spacer(),
                        CustomElevatedBtn(
                          btnName: "Done", 
                          onTapp: (){
                            Navigator.pop(context);
                          }, 
                          color: AppColor.colorPrimary
                        )
                      ],),
                    ],),
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}