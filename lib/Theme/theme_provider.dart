import 'package:flutter/material.dart';
import 'package:logistics/utils/colors.dart';

class ThemeProvider extends ChangeNotifier {
  // ThemeMode themeMode = ThemeMode.dark;
  ThemeMode themeMode = ThemeMode.light;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColor.colorBlack,
    colorScheme: const ColorScheme.dark(),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColor.colorWhite,
    colorScheme: const ColorScheme.light(),
  );
}
