

import 'package:flutter/material.dart';
import 'package:logistics/Pages/homepage.dart';
import 'package:logistics/Pages/dashboard.dart';
import 'package:logistics/Pages/splashscreen.dart';
import 'package:logistics/Theme/theme_constants.dart';
import 'package:logistics/Theme/theme_manger.dart';

import 'Pages/Login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Logistics',
      themeMode: ThemeMode.light,
      home: SplashScreen(),
    );
  }
}

// ThemeManager _themeManager = ThemeManager();

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {

//   @override
//   void dispose() {
//     _themeManager.removeListener(themeListener);
//     super.dispose();
//   }

//   @override
//   void initState() {
//     _themeManager.addListener(themeListener);
//     super.initState();
//   }
//   themeListener(){
//     if(mounted){
//       setState(() {
//         _themeManager;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Logistics',
//       // themeMode: ThemeMode.light,
//       theme: lightTheme,
//       darkTheme: darkTheme,
//       themeMode: _themeManager.themeMode,
//       home: const SplashScreen(),
//     );
//   }
// }