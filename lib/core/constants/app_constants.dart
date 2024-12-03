// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class AppConstants {
  static const String api = '328669704044b75af29dc6b4ddbad581';
  static const String baseUrl = 'https://api.openweathermap.org/data/2.5/';
  static List<Color> ColorsOfBg = [Colors.white, Colors.blue.shade200];
  static const sharedToCurrent = 'Current';
  static const sharedToForecast = 'Forecast';

  // Theme definitions
  static final ThemeData lightMode = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: Colors.black),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(Colors.black),
      trackColor: MaterialStateProperty.all(Colors.grey),
    ),
  );

  static final ThemeData darkMode = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: Colors.white),
    ),
    switchTheme: SwitchThemeData(
      // activeColor: Colors.white,
      thumbColor: MaterialStateProperty.all(Colors.white),
      trackColor: MaterialStateProperty.all(Colors.blue),
    ),
  );

}

enum Status { Loading, Success, Error, Initial }
