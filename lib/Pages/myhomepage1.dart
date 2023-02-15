// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:logistics/Pages/sendpackageone.dart';

// import '../utils/Colors.dart';
// import 'historypage.dart';
// import 'homepage.dart';
// import 'settingpage.dart';
// import 'trackingpage.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//   int currentTab = 0;

//   final List<Widget> screens = const [
//     HomePage(),
//     TrackingPage(),
//     HistoryPage(),
//     SettingPage(),
//     SendPackageOne()
//   ];
//   final PageStorageBucket bucket = PageStorageBucket();
//   Widget currentScreen = HomePage();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageStorage(
//         child: currentScreen,
//         bucket: bucket,
//       ),
//       floatingActionButton: FloatingActionButton(
//         elevation: 5.0,
//         onPressed: () {
//           setState(() {
//             currentScreen = SendPackageOne();  
//             currentTab = 4;
//           });
//         },
//         child: Icon(Icons.add,size: 40,color: currentTab == 4 ? AppColor.colorBlack : AppColor.colorWhite),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
//       bottomNavigationBar: BottomAppBar(
//         shape:const CircularNotchedRectangle(),
//         notchMargin: 5.0,
//         child: Container(
//           height: 60,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget> [
//               // left side bar
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   MaterialButton(
//                     minWidth: 40,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen = HomePage();
//                         currentTab = 0;
//                       });
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           Icons.home,
//                           color: currentTab == 0 ? AppColor.colorPrimary : AppColor.colorBlack,
//                         ),
//                         Text(
//                           "Home",
//                           style: TextStyle(fontSize: 13,color: currentTab == 0 ? AppColor.colorPrimary : AppColor.colorBlack,),
//                         )
//                     ]),
//                   ),
//                   MaterialButton(
//                     minWidth: 40,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen = TrackingPage();
//                         currentTab = 1;
//                       });
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         // Icon(
//                           Image.asset(
//                           'assets/images/tracking.png',
//                           height: 30,
//                           width: 30,
//                           color: currentTab == 1 ? AppColor.colorPrimary : AppColor.colorBlack,
//                         ),
//                         Text(
//                           "Tracking",
//                           style: TextStyle(fontSize: 13,color: currentTab == 1 ? AppColor.colorPrimary : AppColor.colorBlack,),
//                         )
//                     ]),
//                   ),
//               ],),
//               // right side bar
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   MaterialButton(
//                     minWidth: 40,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen = HistoryPage();
//                         currentTab = 2;
//                       });
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           Icons.history,
//                           color: currentTab == 2 ? AppColor.colorPrimary : AppColor.colorBlack,
//                         ),
//                         Text(
//                           "History",
//                           style: TextStyle(fontSize: 13,color: currentTab == 2 ? AppColor.colorPrimary : AppColor.colorBlack,),
//                         )
//                     ]),
//                   ),
//                   MaterialButton(
//                     minWidth: 40,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen = SettingPage();
//                         currentTab = 3;
//                       });
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           Icons.settings,
//                           color: currentTab == 3 ? AppColor.colorPrimary : AppColor.colorBlack,
//                         ),
//                         Text(
//                           "Setting",
//                           style: TextStyle(fontSize: 13,color: currentTab == 3 ? AppColor.colorPrimary : AppColor.colorBlack,),
//                         )
//                     ]),
//                   ),
//               ],)
//             ],
//           ),
//         ),
//       ),



//     );
//   }
// }