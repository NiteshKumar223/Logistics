// import 'package:custom_navigator/custom_navigation.dart';
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
//   var pagesdata = const [
//     HomePage(),
//     TrackingPage(),
//     HistoryPage(),
//     SettingPage()
//   ];
//   int selecteditem = 0;
//   void onItemTapped(int index){
//     setState(() {
//       selecteditem = index;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return CustomScaffold(
//       children: pagesdata,
//       onItemTap: onItemTapped,
//       scaffold: Scaffold(
//         body: pagesdata.elementAt(selecteditem),
    
//         bottomNavigationBar: BottomNavigationBar(
//           elevation: 20.0,
//           unselectedItemColor: AppColor.colorBlack,
//           unselectedFontSize: 13.0,
//           selectedItemColor: AppColor.colorPrimary,
//           selectedFontSize: 13.0,
//           type: BottomNavigationBarType.fixed,
//           items: [
            
//             const BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.home,
//                 size: 30,
//               ),
//               label: "Home",
//               tooltip: "Home",
//             ),
//             BottomNavigationBarItem(
//               icon: Padding(
//                 padding: const EdgeInsets.only(right: 25.0),
//                 child: Image.asset(
//                   'assets/images/tracking.png',
//                   height: 30,
//                   width: 30,
//                   color: AppColor.colorBlack,
//                 ),
//               ),
//               activeIcon: Padding(
//                 padding: const EdgeInsets.only(right: 25.0),
//                 child: Image.asset(
//                   'assets/images/tracking.png',
//                   height: 30,
//                   width: 30,
//                   color: AppColor.colorPrimary,
//                 ),
//               ),
//               label: "Tracking",
//               tooltip: "Tracking",
//             ),
//             const BottomNavigationBarItem(
//               icon: Padding(
//                 padding: EdgeInsets.only(left: 25.0),
//                 child: Icon(
//                   Icons.history,
//                 ),
//               ),
//               label: "History",
//               tooltip: "History",
//             ),
//             const BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.settings,
//               ),
//               label: "Setting",
//               tooltip: "Setting",
//             ),
//           ],
//           // currentIndex: selecteditem,
//           // onTap: (setValue) {
//           //   setState(() { 
//           //     selecteditem = setValue;
//           //   });
//           // },
//         ),
//         floatingActionButton: FloatingActionButton(
//           elevation: 0.0,
//           onPressed: () {
//             Navigator.of(context).push(
//               MaterialPageRoute(builder: (context) => const SendPackageOne()),
//             );
//           },
//           child:  const Icon(Icons.add,size: 40,),
    
//         ),
//         floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:logistics/Pages/sendpackageone.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../utils/colors.dart';
import 'historypage.dart';
import 'homepage.dart';
import 'settingpage.dart';
import 'trackingpage.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  final controller = PersistentTabController(initialIndex: 0);

  List <Widget> screens(){
    return [
      const HomePage(),
      const TrackingPage(),
      const SendPackageOne(),
      const HistoryPage(),
      const SettingPage()
    ];
  }

  List<PersistentBottomNavBarItem> navBarItem() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        inactiveIcon: Icon(Icons.home,color: AppColor.colorDarkGray,),
        title: "home",
        textStyle: const TextStyle(fontSize: 13.0),
        activeColorPrimary: AppColor.colorPrimary
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.location_on),
        inactiveIcon: Icon(Icons.location_on,color: AppColor.colorDarkGray,),
        title: "Tracking",
        textStyle: const TextStyle(fontSize: 13.0),
        activeColorPrimary: AppColor.colorPrimary,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.add,color: AppColor.colorWhite,size: 40.0,),
        inactiveIcon: Icon(Icons.add, color: AppColor.colorBlack,size: 40.0,),
        activeColorPrimary: AppColor.colorPrimary,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.history),
        inactiveIcon: Icon(Icons.history,color: AppColor.colorDarkGray,),
        title: "History",
        textStyle: const TextStyle(fontSize: 13.0),
        activeColorPrimary: AppColor.colorPrimary,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.settings),
        inactiveIcon: Icon(Icons.settings,color: AppColor.colorDarkGray,),
        title: "Settings",
        textStyle: const TextStyle(fontSize: 13.0),
        activeColorPrimary: AppColor.colorPrimary,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context, 
      screens: screens(),
      items: navBarItem(),
      navBarHeight: 55.0,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(1.0),
      ),
      navBarStyle: NavBarStyle.style15,
    );
  }
}