import 'package:flutter/material.dart';
import 'package:logistics/CustomUI/customelevatedbtn.dart';
import 'package:logistics/Pages/sendpackagethree.dart';
import 'package:logistics/utils/colors.dart';

import '../CustomUI/customappbarwidget.dart';
import '../CustomUI/custommaterialbtn.dart';

class SendPackagetwo extends StatefulWidget {
  const SendPackagetwo({super.key});

  @override
  State<SendPackagetwo> createState() => _SendPackagetwoState();
}

class _SendPackagetwoState extends State<SendPackagetwo> {
  var item = 1;
  double rate = 50.0;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: 
      PreferredSize(
        preferredSize: Size(screenSize.width,60),
        child: CustomAppBarWidget(
          title: 'Send Package',
          onFirstTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: AppColor.colorDarkLightGray,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 135,
                        child: CustomElevatedBtn(
                          btnName: "From",
                          onTapp: () {
                            // Navigator.of(context).push(
                            //   MaterialPageRoute(builder: (context) => SendPackagetwo())
                            // );
                          },
                          color: AppColor.colorPrimaryMid,
                          elevt: 0.0,
                          style: TextStyle(
                              fontSize: 15, color: AppColor.colorPrimary),
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 135,
                        child: CustomElevatedBtn(
                          btnName: "To",
                          onTapp: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SendPackageThree()));
                          },
                          color: AppColor.colorDarkLightGray,
                          elevt: 0.0,
                          style: TextStyle(
                              fontSize: 15, color: AppColor.colorDarkGray),
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
                      labelText: 'From:',
                      hintText: 'From:'),
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
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 20,right: 30),
              child: Row(
                children: [
                  Text(
                    "Total Item :",
                    style: TextStyle(fontSize: 18),
                  ),
                  Spacer(),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        item--;
                      });
                    },
                    child: Icon(Icons.remove),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("${item}"),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        item++;
                      });
                    },
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ),
             
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 20,right: 30),
              child: Row(children: [
                Text("Shipping Price:"),
                Spacer(),
                Text("Rs. ${rate*item}"),
              ],),
            ),
            // SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 20,right: 30),
              child: Row(children: [
                const Text("Delivery Charge:"),
                const Spacer(),
                Text("Rs. ${rate * 0.20 * item}"),
              ],),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 20,right: 30),
              child: Divider(color: AppColor.colorDarkGray,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 15,right: 30),
              child: Row(children: [
                const Text("Total:",style: TextStyle(fontWeight: FontWeight.bold),),
                const SizedBox(width: 30,),
                Text(
                  "Rs. ${rate*0.20*item + rate*item}",
                  style: const TextStyle(
                    color: AppColor.colorPrimary,
                    fontWeight: FontWeight.bold,
                  ),),
                const Spacer(),
                CustomElevatedBtn(
                  btnName: "Continue", 
                  onTapp: (){
                    Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SendPackageThree()));
                  }, 
                  color: AppColor.colorPrimary,
                )
              ],),
            )
          ],
        ),
      ),
    );
  }
}
